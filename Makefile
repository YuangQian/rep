VULKAN_SDK_PATH = /home/yuaqia01/Documents/VulkanSDK/1.1.92.1/x86_64
CFLAGS = -std=c++11 -I$(VULKAN_SDK_PATH)/include
LDFLAGS = -L$(VULKAN_SDK_PATH)/lib `pkg-config --static --libs glfw3` -lvulkan
VulkanTest: HelloTriangleApplication.cpp
	g++ $(CFLAGS) -o VulkanTest HelloTriangleApplication.cpp $(LDFLAGS)
.PHONY: test clean
test: VulkanTest
	LD_LIBRARY_PATH=$(VULKAN_SDK_PATH)/lib VK_LAYER_PATH=$(VULKAN_SDK_PATH)/etc/explicit_lay
clean:
	rm -f VulkanTest
