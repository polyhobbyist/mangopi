FROM ubuntu:jammy-20220801

RUN echo 'Etc/UTC' > /etc/timezone && \
    ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime && \
    apt-get update && \
    apt-get install -q -y --no-install-recommends tzdata && \
    rm -rf /var/lib/apt/lists/*

# install packages
RUN apt-get update && apt-get install -q -y --no-install-recommends \
    bash-completion \
    dirmngr \
    gnupg2 \
    lsb-release \
    python3-flake8 \
    python3-flake8-blind-except \
    python3-flake8-builtins \
    python3-flake8-class-newline \
    python3-flake8-comprehensions \
    python3-flake8-deprecated \
    python3-flake8-docstrings \
    python3-flake8-import-order \
    python3-flake8-quotes \
    python3-pip \
    python3-pytest-repeat \
    python3-pytest-rerunfailures \
    python3-dev \
    && rm -rf /var/lib/apt/lists/*

# setup sources.list
#RUN echo "deb http://packages.ros.org/ros2/ubuntu jammy main" > /etc/apt/sources.list.d/ros2-latest.list

# setup keys
#RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys C1CF6E31E6BADE8868B172B4F42ED6FBAB17C654

# setup environment
ENV LANG C.UTF-8
ENV LC_ALL C.UTF-8

# install bootstrap tools
RUN apt-get update && apt-get install --no-install-recommends -y \
    build-essential \
    git \
    && rm -rf /var/lib/apt/lists/*

RUN pip3 install \
    catkin-pkg \
    colcon-common-extensions \
    lark \
    empy \
    numpy \
    pytest \
    vcstool \
    rosdep


# setup colcon mixin and metadata
#RUN colcon mixin add default \
#      https://raw.githubusercontent.com/colcon/colcon-mixin-repository/master/index.yaml && \
#    colcon mixin update && \
#    colcon metadata add default \
#      https://raw.githubusercontent.com/colcon/colcon-metadata-repository/master/index.yaml && \
#    colcon metadata update


# clone source
ENV ROS2_WS /opt/ros2_ws
RUN mkdir -p $ROS2_WS/src
WORKDIR $ROS2_WS

# set environment
ARG ROS_DISTRO=humble
ENV ROS_DISTRO=$ROS_DISTRO
ENV ROS_VERSION=2 \
    ROS_PYTHON_VERSION=3

# clone source
ARG ROS2_BRANCH=$ROS_DISTRO
ARG ROS2_REPO=https://github.com/ros2/ros2.git
RUN git clone $ROS2_REPO -b $ROS2_BRANCH \
    && vcs import src < ros2/ros2.repos

# install dependencies
RUN apt-get update && \
    rosdep init && \
    rosdep update

RUN rosdep install -y -r \
    --from-paths src \
    --ignore-src \
    --skip-keys " \
        fastcdr \
        rti-connext-dds-6.0.1 \
        urdfdom_headers \
        ignition-cmake2 \
        python3-catkin-pkg-modules \
        python3-rosdistro-modules \
        ignition-math6 \
        " \
    && rm -rf /var/lib/apt/lists/*

# build source
RUN colcon \
    build \
    --symlink-install \
    --event-handlers=console_cohesion+ \
    --packages-ignore mimick_vendor  rti_connext_dds \
    --cmake-args --no-warn-unused-cli -DBUILD_TESTING=OFF

# setup bashrc
RUN cp /etc/skel/.bashrc ~/

# setup entrypoint
COPY ./ros_entrypoint.sh /

ENTRYPOINT ["/ros_entrypoint.sh"]
CMD ["bash"]