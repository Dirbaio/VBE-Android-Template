#include "GLES2/gl2.h"
#include "SDL.h"
#include <stdio.h>
#include <android/log.h>

#define APPNAME "MyApp"

// VBE
#include "includes.hpp"

int SDL_main(int argc, char *argv[]) {
	Environment::startUp();
	__android_log_print(ANDROID_LOG_VERBOSE, APPNAME, "Environment startup done");
	int frame = 0;
	while(true) {
		__android_log_print(ANDROID_LOG_VERBOSE, APPNAME, "update");
		Environment::update();

		glClearColor(frame%2,0,0,1);
		glClear(GL_COLOR_BUFFER_BIT);

		VBE_LOG("TEST");
		__android_log_print(ANDROID_LOG_VERBOSE, APPNAME, "swapBuffers");
		Environment::getScreen()->swapBuffers();
        frame++;
	}

	Environment::shutDown();
	return 0;
}
