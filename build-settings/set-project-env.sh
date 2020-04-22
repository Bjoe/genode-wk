export PROJECT_NAME=genode-wk
export PROJECT_SETTINGS_DIR="genode-build-env-ubuntu"
export WK_DIR="$BASE_DIR"
export BUILD_DIR="$BASE_DIR/build-output"

BUILD_ENV="$BASE_DIR/build-env/$PROJECT_SETTINGS_DIR/set-build-env.sh"
if [ ! -f "$BUILD_ENV" ];then
    pushd "$BASE_DIR"
    git clone https://github.com/Bjoe/DockerImages.git build-env
    popd
else
    pushd "$BASE_DIR/build-env"
    git pull
    popd
fi
source "$BUILD_ENV"
