
Strict

Extern"Win32"
	Function SetWindowLongPtr:Int(hWnd:Byte Ptr, index:Int, value:Byte Ptr)"Win32"
	Function GetWindowLongPtr:Byte Ptr(hWnd:Byte Ptr, index:Int)"Win32"
EndExtern

Type vkFunctions
	' global functions
	Field vkCreateInstance:Int(pCreateInfo:Byte Ptr,pAllocator:Byte Ptr,pInstance:Byte Ptr)"Win32"
	Field vkEnumerateInstanceExtensionProperties:Int(pLayerName$w,pPropertyCount:UInt Ptr,pProperties:Byte Ptr)"Win32"
	Field vkEnumerateInstanceLayerProperties:Int(pPropertyCount:UInt Ptr,pProperties:Byte Ptr)"Win32"
	
	' instance
	Field vkGetInstanceProcAddr:Byte Ptr(instance:Byte Ptr, pFuncName$z)"Win32"
	Field vkEnumeratePhysicalDevices:Int(instance:Byte Ptr,pPhysicalDeviceCount:UInt Ptr,pPhysicalDevices:Byte Ptr)"Win32"
	Field vkDestroyInstance(instance:Byte Ptr,pAllocator:Byte Ptr)"Win32"
	
	' physical device - properties
	Field vkCreateDevice:Int(physicalDevice:Byte Ptr,pCreateInfo:Byte Ptr,pAllocator:Byte Ptr,pDevice:Byte Ptr)"Win32"
	Field vkEnumerateDeviceExtensionProperties:Int(physicalDevice:Byte Ptr,pLayerName:Byte Ptr,pPropertyCount:UInt Ptr,pProperties:Byte Ptr)"Win32"
	Field vkGetPhysicalDeviceProperties(physicalDevice:Byte Ptr,pProperties:Byte Ptr)"Win32"
	Field vkGetPhysicalDeviceFeatures(physicalDevice:Byte Ptr,pFeatures:Byte Ptr)"Win32"
	Field vkGetPhysicalDeviceQueueFamilyProperties(physicalDevice:Byte Ptr,pQueueFamilyPropertyCount:UInt Ptr,pQueueFamilyProperties:Byte Ptr)"Win32"
	Field vkGetPhysicalDeviceMemoryProperties(physicalDevice:Byte Ptr,pMemoryProperties:Byte Ptr)"Win32"

	' physical device - surface functions
	Field vkCreateWin32SurfaceKHR:Int(instance:Byte Ptr,pCreateInfo:Byte Ptr,pAllocator:Byte Ptr,pSurface:Byte Ptr)"Win32"
	Field vkGetPhysicalDeviceSurfaceSupportKHR:Int(physicalDevice:Byte Ptr,queueFamilyIndex:UInt,surface:Byte Ptr,pSupported:UInt Ptr)"Win32"
	Field vkGetPhysicalDeviceSurfaceCapabilitiesKHR:Int(physicalDevice:Byte Ptr,surface:Byte Ptr,pSurfaceCapabilities:Byte Ptr)"Win32"
	Field vkGetPhysicalDeviceSurfaceFormatsKHR:Int(physicalDevice:Byte Ptr,surface:Byte Ptr,pSurfaceFormatCount:UInt Ptr,pSurfaceFormats:Byte Ptr)"Win32"
	Field vkGetPhysicalDeviceSurfacePresentModesKHR:Int(physicalDevice:Byte Ptr,surface:Byte Ptr,pPresentModeCount:UInt Ptr,pPresentModes:Int Ptr)"Win32"
	Field vkDestroySurfaceKHR(instance:Byte Ptr,surface:Byte Ptr,pAllocator:Byte Ptr)"Win32"

	' logical device - can be more than 1
	Field vkGetDeviceProcAddr:Byte Ptr(device:Byte Ptr,pName:Byte Ptr)"Win32"
	Field vkGetDeviceQueue(device:Byte Ptr,queueFamilyIndex:UInt,queueIndex:UInt,pQueue:Byte Ptr)"Win32"
	Field vkDeviceWaitIdle:Int(device:Byte Ptr)"Win32"
	Field vkDestroyDevice(device:Byte Ptr,pAllocator:Byte Ptr)"Win32"

	' logical device - swapchain
	Field vkCreateSwapchainKHR:Int(device:Byte Ptr,pCreateInfo:Byte Ptr,pAllocator:Byte Ptr,pSwapchain:Byte Ptr)"Win32"
	Field vkDestroySwapchainKHR(device:Byte Ptr,swapchain:Byte Ptr,pAllocator:Byte Ptr)"Win32"
	Field vkGetSwapchainImagesKHR:Int(device:Byte Ptr,swapchain:Byte Ptr,pSwapchainImageCount:UInt Ptr,pSwapchainImages:Byte Ptr)"Win32"
	Field vkAcquireNextImageKHR:Int(device:Byte Ptr,swapchain:Byte Ptr,timeout:ULong,semaphore:Byte Ptr,fence:Byte Ptr,pImageIndex:UInt Ptr)"Win32"

	' logical device - queue
	Field vkQueuePresentKHR:Int(queue:Byte Ptr,pPresentInfo:Byte Ptr)"Win32"
	Field vkQueueSubmit:Int(queue:Byte Ptr,submitCount:UInt,pSubmits:Byte Ptr,fence:Byte Ptr)"Win32"

	' logical device - semaphore
	Field vkCreateSemaphore:Int(device:Byte Ptr,pCreateInfo:Byte Ptr,pAllocator:Byte Ptr,pSemaphore:Byte Ptr)"Win32"
	Field vkDestroySemaphore(device:Byte Ptr,semaphore:Byte Ptr,pAllocator:Byte Ptr)"Win32"

	' logical device - command pool
	Field vkCreateCommandPool:Int(device:Byte Ptr,pCreateInfo:Byte Ptr,pAllocator:Byte Ptr,pCommandPool:Byte Ptr)"Win32"
	Field vkDestroyCommandPool(device:Byte Ptr,commandPool:Byte Ptr,pAllocator:Byte Ptr)"Win32"

	' logical device - command buffers
	Field vkAllocateCommandBuffers:Int(device:Byte Ptr,pAllocateInfo:Byte Ptr,pCommandBuffers:Byte Ptr)"Win32"
	Field vkFreeCommandBuffers(device:Byte Ptr,commandPool:Byte Ptr,commandBufferCount:UInt,pCommandBuffers:Byte Ptr)"Win32"
	Field vkBeginCommandBuffer:Int(commandBuffer:Byte Ptr,pBeginInfo:Byte Ptr)"Win32"
	Field vkEndCommandBuffer:Int(commandBuffer:Byte Ptr)"Win32"
 
	' logical device - command buffer
	Field vkCmdBindPipeline(commandBuffer:Byte Ptr,pipelineBindPoint:Int,pipeline:Byte Ptr)"Win32"
	Field vkCmdPipelineBarrier(commandBuffer:Byte Ptr,srcStageMask:UInt,dstStageMask:UInt,dependencyFlags:UInt,memoryBarrierCount:UInt,pMemoryBarriers:Byte Ptr,bufferMemoryBarrierCount:UInt,pBufferMemoryBarriers:Byte Ptr,imageMemoryBarrierCount:UInt,pImageMemoryBarriers:Byte Ptr)"Win32"
	Field vkCmdClearColorImage(commandBuffer:Byte Ptr,image:Byte Ptr,imageLayout:Int,pColor:Byte Ptr,rangeCount:UInt,pRanges:Byte Ptr)"Win32"
	Field vkCmdBeginRenderPass(commandBuffer:Byte Ptr,pRenderPassBegin:Byte Ptr,contents:Int)"Win32"
	Field vkCmdEndRenderPass(commandBuffer:Byte Ptr)"Win32"
	Field vkCmdDraw(commandBuffer:Byte Ptr,vertexCount:UInt,instanceCount:UInt,firstVertex:UInt,firstInstance:UInt)"Win32"
	Field vkCmdBindVertexBuffers(commandBuffer:Byte Ptr,firstBinding:UInt,bindingCount:UInt,pBuffers:Byte Ptr,pOffsets:ULong Ptr)"Win32"
	Field vkCmdSetViewport(commandBuffer:Byte Ptr,firstViewport:UInt,viewportCount:UInt,pViewports:Byte Ptr)"Win32"
	Field vkCmdSetScissor(commandBuffer:Byte Ptr,firstScissor:UInt,scissorCount:UInt,pScissors:Byte Ptr)"Win32"
	Field vkCmdCopyBuffer(commandBuffer:Byte Ptr,srcBuffer:Byte Ptr,dstBuffer:Byte Ptr,regionCount:UInt,pRegions:Byte Ptr)"Win32"

	' logical device - renderpass
	Field vkCreateRenderPass:Int(device:Byte Ptr,pCreateInfo:Byte Ptr,pAllocator:Byte Ptr,pRenderPass:Byte Ptr)"Win32"
	Field vkDestroyRenderPass(device:Byte Ptr,renderPass:Byte Ptr,pAllocator:Byte Ptr)"Win32"
	
	' logical device - framebuffer
	Field vkCreateFramebuffer:Int(device:Byte Ptr,pCreateInfo:Byte Ptr,pAllocator:Byte Ptr,pFramebuffer:Byte Ptr)"Win32"
	Field vkDestroyFramebuffer(device:Byte Ptr,framebuffer:Byte Ptr,pAllocator:Byte Ptr)"Win32"

	' logical device - shader module
	Field vkCreateShaderModule:Int(device:Byte Ptr,pCreateInfo:Byte Ptr,pAllocator:Byte Ptr,pShaderModule:Byte Ptr)"Win32"
	Field vkDestroyShaderModule(device:Byte Ptr,shaderModule:Byte Ptr,pAllocator:Byte Ptr)"Win32"

	' logical device - pipeline layout
	Field vkCreatePipelineLayout:Int(device:Byte Ptr,pCreateInfo:Byte Ptr,pAllocator:Byte Ptr,pPipelineLayout:Byte Ptr)"Win32"
	Field vkDestroyPipelineLayout(device:Byte Ptr,pipelineLayout:Byte Ptr,pAllocator:Byte Ptr)"Win32"
	
	' logical device - pipeline
	Field vkCreateGraphicsPipelines:Int(device:Byte Ptr,pipelineCache:Byte Ptr,createInfoCount:UInt,pCreateInfos:Byte Ptr,pAllocator:Byte Ptr,pPipelines:Byte Ptr)"Win32"
	Field vkDestroyPipeline(device:Byte Ptr,pipeline:Byte Ptr,pAllocator:Byte Ptr)"Win32"

	' logical device - buffer
	Field vkCreateBuffer:Int(device:Byte Ptr,pCreateInfo:Byte Ptr,pAllocator:Byte Ptr,pBuffer:Byte Ptr)"Win32"
	Field vkDestroyBuffer(device:Byte Ptr,buffer:Byte Ptr,pAllocator:Byte Ptr)"Win32"
	Field vkGetBufferMemoryRequirements(device:Byte Ptr,buffer:Byte Ptr,pMemoryRequirements:Byte Ptr)"Win32"
	Field vkBindBufferMemory:Int(device:Byte Ptr,buffer:Byte Ptr,memory:Byte Ptr,memoryOffset:ULong)"Win32"

	' logical device - memory allocation
	Field vkAllocateMemory:Int(device:Byte Ptr,pAllocateInfo:Byte Ptr,pAllocator:Byte Ptr,pMemory:Byte Ptr)"Win32"
	Field vkFreeMemory(device:Byte Ptr,memory:Byte Ptr,pAllocator:Byte Ptr)"Win32"
	Field vkMapMemory:Int(device:Byte Ptr,memory:Byte Ptr,offset:ULong,size:ULong,flags:UInt,ppData:Byte Ptr)"Win32"
	Field vkUnmapMemory(device:Byte Ptr,memory:Byte Ptr)"Win32"
	Field vkFlushMappedMemoryRanges:Int(device:Byte Ptr,memoryRangeCount:UInt,pMemoryRanges:Byte Ptr)"Win32"

	' logical device - fence
	Field vkCreateFence:Int(device:Byte Ptr,pCreateInfo:Byte Ptr,pAllocator:Byte Ptr,pFence:Byte Ptr)"Win32"
	Field vkDestroyFence(device:Byte Ptr,fence:Byte Ptr,pAllocator:Byte Ptr)"Win32"
	Field vkWaitForFences:Int(device:Byte Ptr,fenceCount:UInt,pFences:Byte Ptr,waitAll:UInt,timeout:ULong)"Win32"
	Field vkResetFences:Int(device:Byte Ptr,fenceCount:UInt,pFences:Byte Ptr)"Win32"

	' logical device - descriptors
	Field vkCreateDescriptorSetLayout:Int(device:Byte Ptr,pCreateInfo:Byte Ptr,pAllocator:Byte Ptr,pSetLayout:Byte Ptr)"Win32"
	Field vkDestroyDescriptorSetLayout(device:Byte Ptr,descriptorSetLayout:Byte Ptr,pAllocator:Byte Ptr)"Win32"
	Field vkCreateDescriptorPool:Int(device:Byte Ptr,pCreateInfo:Byte Ptr,pAllocator:Byte Ptr,pDescriptorPool:Byte Ptr)"Win32"
	Field vkDestroyDescriptorPool(device:Byte Ptr,descriptorPool:Byte Ptr,pAllocator:Byte Ptr)"Win32"
	Field vkAllocateDescriptorSets:Int(device:Byte Ptr,pAllocateInfo:Byte Ptr,pDescriptorSets:Byte Ptr)"Win32"
	Field vkFreeDescriptorSets:Int(device:Byte Ptr,descriptorPool:Byte Ptr,descriptorSetCount:UInt,pDescriptorSets:Byte Ptr)"Win32"
	Field vkUpdateDescriptorSets(device:Byte Ptr,descriptorWriteCount:UInt,pDescriptorWrites:Byte Ptr,descriptorCopyCount:UInt,pDescriptorCopies:Byte Ptr)"Win32"
	Field vkCmdBindDescriptorSets(commandBuffer:Byte Ptr,pipelineBindPoint:Int,layout:Byte Ptr,firstSet:UInt,descriptorSetCount:UInt,pDescriptorSets:Byte Ptr,dynamicOffsetCount:UInt,pDynamicOffsets:UInt Ptr)"Win32"

	' logical device - image
	Field vkCreateImage:Int(device:Byte Ptr,pCreateInfo:Byte Ptr,pAllocator:Byte Ptr,pImage:Byte Ptr)"Win32"
	Field vkDestroyImage(device:Byte Ptr,image:Byte Ptr,pAllocator:Byte Ptr)"Win32"
	Field vkGetImageSubresourceLayout(device:Byte Ptr,image:Byte Ptr,pSubresource:Byte Ptr,pLayout:Byte Ptr)"Win32"
	Field vkCreateImageView:Int(device:Byte Ptr,pCreateInfo:Byte Ptr,pAllocator:Byte Ptr,pView:Byte Ptr)"Win32"
	Field vkDestroyImageView(device:Byte Ptr,imageView:Byte Ptr,pAllocator:Byte Ptr)"Win32"
	Field vkBindImageMemory:Int(device:Byte Ptr,image:Byte Ptr,memory:Byte Ptr,memoryOffset:ULong)"Win32"
	Field vkGetImageMemoryRequirements(device:Byte Ptr,image:Byte Ptr,pMemoryRequirements:Byte Ptr)"Win32"

	' logical device - sampler
	Field vkCreateSampler:Int(device:Byte Ptr,pCreateInfo:Byte Ptr,pAllocator:Byte Ptr,pSampler:Byte Ptr)"Win32"
	Field vkDestroySampler(device:Byte Ptr,sampler:Byte Ptr,pAllocator:Byte Ptr)"Win32"
	
	Method New(vkLib:Byte Ptr)
		vkGetInstanceProcAddr = GetProcAddress(vkLib,"vkGetInstanceProcAddr")
		If Not vkGetInstanceProcAddr RuntimeError(" Cannot find vkGetInstanceProcAddr")
	EndMethod

	Method InitGlobalFunctions()
		vkCreateInstance = vkGetInstanceProcAddr(Null,"vkCreateInstance")
		vkEnumerateInstanceExtensionProperties = vkGetInstanceProcAddr(Null,"vkEnumerateInstanceExtensionProperties")
		vkEnumerateInstanceLayerProperties = vkGetInstanceProcAddr(Null,"vkEnumerateInstanceLayerProperties")	
	EndMethod

	Method InitInstanceFunctions(instance:Byte Ptr)
		vkDestroyInstance = vkGetInstanceProcAddr(instance, "vkDestroyInstance")
		vkEnumeratePhysicalDevices = vkGetInstanceProcAddr(instance, "vkEnumeratePhysicalDevices")
		vkGetPhysicalDeviceProperties = vkGetInstanceProcAddr(instance, "vkGetPhysicalDeviceProperties")
		vkGetPhysicalDeviceFeatures = vkGetInstanceProcAddr(instance, "vkGetPhysicalDeviceFeatures")
		vkGetPhysicalDeviceQueueFamilyProperties = vkGetInstanceProcAddr(instance, "vkGetPhysicalDeviceQueueFamilyProperties")
		vkGetPhysicalDeviceMemoryProperties = vkGetInstanceProcAddr(instance, "vkGetPhysicalDeviceMemoryProperties")

		vkCreateDevice = vkGetInstanceProcAddr(instance, "vkCreateDevice")
		vkGetDeviceProcAddr = vkGetInstanceProcAddr(instance, "vkGetDeviceProcAddr")
		vkEnumerateDeviceExtensionProperties = vkGetInstanceProcAddr(instance, "vkEnumerateDeviceExtensionProperties")
	
		vkCreateWin32SurfaceKHR = vkGetInstanceProcAddr(instance, "vkCreateWin32SurfaceKHR")
		vkGetPhysicalDeviceSurfaceSupportKHR = vkGetInstanceProcAddr(instance, "vkGetPhysicalDeviceSurfaceSupportKHR")
		vkGetPhysicalDeviceSurfaceCapabilitiesKHR = vkGetInstanceProcAddr(instance, "vkGetPhysicalDeviceSurfaceCapabilitiesKHR")
		vkGetPhysicalDeviceSurfaceFormatsKHR = vkGetInstanceProcAddr(instance, "vkGetPhysicalDeviceSurfaceFormatsKHR")
		vkGetPhysicalDeviceSurfacePresentModesKHR = vkGetInstanceProcAddr(instance, "vkGetPhysicalDeviceSurfacePresentModesKHR")
		vkDestroySurfaceKHR = vkGetInstanceProcAddr(instance, "vkDestroySurfaceKHR")
	EndMethod
	
	Method InitDeviceFunctions(device:Byte Ptr)
		vkGetDeviceQueue = vkGetDeviceProcAddr(device, "vkGetDeviceQueue")
		vkDeviceWaitIdle = vkGetDeviceProcAddr(device, "vkDeviceWaitIdle")
		vkDestroyDevice = vkGetDeviceProcAddr(device, "vkDestroyDevice")
		
		vkCreateSwapchainKHR = vkGetDeviceProcAddr(device, "vkCreateSwapchainKHR")
		vkDestroySwapchainKHR = vkGetDeviceProcAddr(device, "vkDestroySwapchainKHR")
		vkGetSwapchainImagesKHR = vkGetDeviceProcAddr(device, "vkGetSwapchainImagesKHR")
		vkAcquireNextImageKHR = vkGetDeviceProcAddr(device, "vkAcquireNextImageKHR")

		vkQueueSubmit = vkGetDeviceProcAddr(device, "vkQueueSubmit")
		vkQueuePresentKHR = vkGetDeviceProcAddr(device, "vkQueuePresentKHR")
		
		vkCreateSemaphore = vkGetDeviceProcAddr(device, "vkCreateSemaphore")
		vkDestroySemaphore = vkGetDeviceProcAddr(device, "vkDestroySemaphore")
		
		vkCreateCommandPool = vkGetDeviceProcAddr(device, "vkCreateCommandPool")
		vkDestroyCommandPool = vkGetDeviceProcAddr(device, "vkDestroyCommandPool")
		
		vkAllocateCommandBuffers = vkGetDeviceProcAddr(device, "vkAllocateCommandBuffers")
		vkFreeCommandBuffers = vkGetDeviceProcAddr(device, "vkFreeCommandBuffers")
		vkBeginCommandBuffer = vkGetDeviceProcAddr(device, "vkBeginCommandBuffer")
		vkEndCommandBuffer = vkGetDeviceProcAddr(device, "vkEndCommandBuffer")

		vkCmdBindPipeline = vkGetDeviceProcAddr(device, "vkCmdBindPipeline")
		vkCmdPipelineBarrier = vkGetDeviceProcAddr(device, "vkCmdPipelineBarrier")
		vkCmdClearColorImage = vkGetDeviceProcAddr(device, "vkCmdClearColorImage")
		vkCmdBeginRenderPass = vkGetDeviceProcAddr(device, "vkCmdBeginRenderPass")
		vkCmdEndRenderPass = vkGetDeviceProcAddr(device, "vkCmdEndRenderPass")
		vkCmdDraw = vkGetDeviceProcAddr(device, "vkCmdDraw")
		vkCmdBindVertexBuffers = vkGetDeviceProcAddr(device, "vkCmdBindVertexBuffers")
		vkCmdSetViewport = vkGetDeviceProcAddr(device, "vkCmdSetViewport")
		vkCmdSetScissor = vkGetDeviceProcAddr(device, "vkCmdSetScissor")
		vkCmdCopyBuffer = vkGetDeviceProcAddr(device, "vkCmdCopyBuffer")

		vkCreateRenderPass = vkGetDeviceProcAddr(device, "vkCreateRenderPass")
		vkDestroyRenderPass = vkGetDeviceProcAddr(device, "vkDestroyRenderPass")
		
		vkCreateImageView = vkGetDeviceProcAddr(device, "vkCreateImageView")
		vkDestroyImageView = vkGetDeviceProcAddr(device, "vkDestroyImageView")
		
		vkCreateFramebuffer = vkGetDeviceProcAddr(device, "vkCreateFramebuffer")
		vkDestroyFramebuffer = vkGetDeviceProcAddr(device, "vkDestroyFramebuffer")
		
		vkCreateShaderModule = vkGetDeviceProcAddr(device, "vkCreateShaderModule")
		vkDestroyShaderModule = vkGetDeviceProcAddr(device, "vkDestroyShaderModule")
		
		vkCreatePipelineLayout = vkGetDeviceProcAddr(device, "vkCreatePipelineLayout")
		vkDestroyPipelineLayout = vkGetDeviceProcAddr(device, "vkDestroyPipelineLayout")
		
		vkCreateGraphicsPipelines = vkGetDeviceProcAddr(device, "vkCreateGraphicsPipelines")
		vkDestroyPipeline = vkGetDeviceProcAddr(device, "vkDestroyPipeline")
		
		vkCreateBuffer = vkGetDeviceProcAddr(device, "vkCreateBuffer")
		vkDestroyBuffer = vkGetDeviceProcAddr(device, "vkDestroyBuffer")
		vkGetBufferMemoryRequirements = vkGetDeviceProcAddr(device, "vkGetBufferMemoryRequirements")
		vkBindBufferMemory = vkGetDeviceProcAddr(device, "vkBindBufferMemory")

		vkAllocateMemory = vkGetDeviceProcAddr(device, "vkAllocateMemory")
		vkFreeMemory = vkGetDeviceProcAddr(device, "vkFreeMemory")
		vkMapMemory = vkGetDeviceProcAddr(device, "vkMapMemory")
		vkUnmapMemory = vkGetDeviceProcAddr(device, "vkUnmapMemory")
		vkFlushMappedMemoryRanges = vkGetDeviceProcAddr(device, "vkFlushMappedMemoryRanges")
		
		vkCreateFence = vkGetDeviceProcAddr(device, "vkCreateFence")
		vkDestroyFence = vkGetDeviceProcAddr(device, "vkDestroyFence")
		vkWaitForFences = vkGetDeviceProcAddr(device, "vkWaitForFences")
		vkResetFences = vkGetDeviceProcAddr(device, "vkResetFences")
		
		vkCreateDescriptorSetLayout = vkGetDeviceProcAddr(device, "vkCreateDescriptorSetLayout")
		vkDestroyDescriptorSetLayout = vkGetDeviceProcAddr(device, "vkDestroyDescriptorSetLayout")
		vkCreateDescriptorPool = vkGetDeviceProcAddr(device, "vkCreateDescriptorPool")
		vkDestroyDescriptorPool = vkGetDeviceProcAddr(device, "vkDestroyDescriptorPool")
		vkAllocateDescriptorSets = vkGetDeviceProcAddr(device, "vkAllocateDescriptorSets")
		vkFreeDescriptorSets = vkGetDeviceProcAddr(device, "vkFreeDescriptorSets")
		vkUpdateDescriptorSets = vkGetDeviceProcAddr(device, "vkUpdateDescriptorSets")
		vkCmdBindDescriptorSets = vkGetDeviceProcAddr(device, "vkCmdBindDescriptorSets")
		
		vkCreateImage = vkGetDeviceProcAddr(device, "vkCreateImage")
		vkDestroyImage = vkGetDeviceProcAddr(device, "vkDestroyImage")
		vkGetImageSubresourceLayout = vkGetDeviceProcAddr(device, "vkGetImageSubresourceLayout")
		vkCreateImageView = vkGetDeviceProcAddr(device, "vkCreateImageView")
		vkDestroyImageView = vkGetDeviceProcAddr(device, "vkDestroyImageView")
		vkBindImageMemory = vkGetDeviceProcAddr(device, "vkBindImageMemory")
		vkGetImageMemoryRequirements = vkGetDeviceProcAddr(device, "vkGetImageMemoryRequirements")
		
		vkCreateSampler = vkGetDeviceProcAddr(device, "vkCreateSampler")
		vkDestroySampler = vkGetDeviceProcAddr(device, "vkDestroySampler")
	EndMethod
EndType

Type VulkanRenderingResource
	Field _framebuffer:Byte Ptr
	Field _commandBuffer:Byte Ptr
	Field _semaphoreImageAvailable:Byte Ptr
	Field _semaphoreRenderingFinished:Byte Ptr
	Field _fence:Byte Ptr
EndType

Type VulkanContext
	Field _vkFuncs:vkFunctions

	' vulkan handles
	Field _instance:Byte Ptr
	Field _physicalDevice:Byte Ptr
	Field _logicalDevice:Byte Ptr
	Field _pipelineLayout:Byte Ptr
	Field _pipeline:Byte Ptr

	Field _surface:Byte Ptr
	Field _swapchain:Byte Ptr
	Field _swapchainImages:Byte Ptr[]
	Field _swapchainImageViews:Byte Ptr[]
	Field _swapchainImageWidth:UInt
	Field _swapchainImageHeight:UInt
	Field _swapchainImageFormat:UInt
	
	Field _depthImage:Byte Ptr[]
	Field _depthImageMemory:Byte Ptr[]
	Field _depthImageVIew:Byte Ptr[]

	Field _renderingResources:VulkanRenderingResource[]
	Field _vertexShader:Byte Ptr
	Field _fragmentShader:Byte Ptr

	Field _vertexBuffer:Byte Ptr
	Field _vertexBufferMemory:Byte Ptr
	
	Field _texture:Byte Ptr
	Field _textureMemory:Byte Ptr
	Field _textureView:Byte Ptr
	Field _sampler:Byte Ptr

	Field _uniformBuffer:Byte Ptr
	Field _uniformBufferMemory:Byte Ptr
	Field _modelMatrix:Float[]
	Field _viewMatrix:Float[]
	Field _projectionMatrix:Float[]

	Field _commandPool:Byte Ptr
	Field _renderpass:Byte Ptr

	Field _descriptorSetLayout:Byte Ptr
	Field _descriptorSetPool:Byte Ptr
	Field _descriptorPool:Byte Ptr
	Field _descriptorSet:Byte Ptr
	
	Field _queueFamilyCount:UInt
	Field _queueGraphicsFamilyIndex:UInt = -1
	Field _queuePresentFamilyIndex:UInt = -1
	Field _queueTransferFamilyIndex:UInt = -1
	Field _queuePresent:Byte Ptr
	Field _queueGraphics:Byte Ptr
	Field _queueTransfer:Byte Ptr

	' os handles
	Field _hWnd:Byte Ptr

	' win32 window handler
	Function WndProc:Byte Ptr(hWnd:Byte Ptr, Msg:UInt, wp:WParam, lp:LParam)"Win32"
		bbSystemEmitOSEvent hwnd,msg,wp,lp,Null

		Select msg
		Case WM_CLOSE
			Return Null

		Case WM_SYSKEYDOWN
			If wp<>KEY_F4 Return Null

		Case WM_EXITSIZEMOVE
			Local pSelf:Size_T = Size_T(GetWindowLongPtr(hWnd, GWL_USERDATA))
			Local context:VulkanContext = VulkanContext(HandleToObject(pSelf))
			If context context.OnWindowSizeChanged()
			Return 0

		End Select
	
		Return DefWindowProcW(hWnd, Msg, wp, lp)
	EndFunction
	
	Method OnWindowSizeChanged()
		If _logicalDevice _vkFuncs.vkDeviceWaitIdle(_logicalDevice)
		
		For Local i:Int = 0 Until _renderingResources.length
			If _renderingResources[i]._framebuffer
				_vkFuncs.vkDestroyFramebuffer(_logicalDevice, _renderingResources[i]._framebuffer, Null)
				_renderingResources[i]._framebuffer = Null
			EndIf
		Next

		For Local i:Int = 0 Until _swapchainImages.length
			If _depthImage[i]
				_vkFuncs.vkFreeMemory(_logicalDevice, _depthImageMemory[i], Null)
				_vkFuncs.vkDestroyImage(_logicalDevice, _depthImage[i], Null)
				_vkFuncs.vkDestroyImageView(_logicalDevice, _depthImageView[i], Null)
				
				_depthImageMemory[i] = Null
				_depthImage[i] = Null
				_depthImageView[i] = Null
			EndIf
			If _swapchainImageViews[i]
				_vkFuncs.vkDestroyImageView(_logicalDevice, _swapchainImageViews[i], Null)
				_swapchainImageViews[i] = Null
			EndIf
		Next

		_vkFuncs.vkDestroySwapchainKHR(_logicalDevice, _swapchain, Null)
		_vkFuncs.vkDestroySurfaceKHR(_instance, _surface, Null)
		
		InitSurface()
		InitSwapchain()
		InitDepthStencil()
		InitFramebuffers()
		
		CalculateMatrices()
	EndMethod
	
	Method InitWin32Window()
		Local wclassName:Short Ptr = "VulkanBlitzmax".ToWString()
		Local wclass:WNDCLASSW = New WNDCLASSW
		wclass.SetlpfnWndProc(WndProc)
		wclass.SethInstance(GetModuleHandleA(Null))
		wclass.SetlpszClassName(wclassName)
		wclass.SethCursor(LoadCursorW( Null,Short Ptr IDC_ARROW ))
		wclass.SetcbWndExtra(8)
		RegisterClassW(wclass.classPtr)

		Local wStyle:UInt = WS_VISIBLE | WS_CAPTION | WS_SYSMENU | WS_MINIMIZEBOX
		_hWnd:Byte Ptr = CreateWindowExW(0, "VulkanBlitzmax", "Vulkan in Blitzmax", wStyle, 1000, 20, 800, 600, Null, Null, GetModuleHandleW(Null), Null)
		MemFree(wclassName)
	
		If Not _hWnd RuntimeError " Cannot create the OS window"
		
		SetWindowLongPtr(_hWnd, GWL_USERDATA, Byte Ptr(HandleFromObject(Self)))
	EndMethod
	
	Method InitLibrary()
		' load in the vulkan library
		Local VulkanLibrary:Byte Ptr = LoadLibraryA("vulkan-1.dll")
		If Not VulkanLibrary RuntimeError("Cannot find vulkan-1.dll")
		
		_vkFuncs = New vkFunctions(VulkanLibrary)
		_vkFuncs.InitGlobalFunctions()
	EndMethod
	
	Method InitInstance()
		' create vukan instance
		Local applicationInfo:vkApplicationInfo = New vkApplicationInfo
		applicationInfo.sType = VK_STRUCTURE_TYPE_APPLICATION_INFO
		applicationInfo.pApplicationName = "Initial test"
		applicationInfo.pEngineName = Null
		applicationInfo.engineVersion = VK_MAKE_VERSION(0, 0, 1)
		applicationInfo.apiVersion = VK_MAKE_VERSION(1, 0, 30)
		
		' make an array of string pointers for the layers that we want to use
		Local pLayerNames:Byte Ptr[1]
		pLayerNames[0] = "VK_LAYER_LUNARG_standard_validation".ToCString()
		
		' make a contiguous array of string pointers to the extensions that we want to enable
		Local pExtensionNames:Byte Ptr[2]
		pExtensionNames[0] = "VK_KHR_surface".ToCString()
		pExtensionNames[1] = "VK_KHR_win32_surface".ToCString()
		
		Local instanceInfo:vkInstanceCreateInfo = New vkInstanceCreateInfo
		instanceInfo.sType = VK_STRUCTURE_TYPE_INSTANCE_CREATE_INFO
		instanceInfo.pNext = Null
		instanceInfo.pApplicationInfo = applicationInfo
		instanceInfo.enabledLayerCount = pLayerNames.length
		instanceInfo.ppEnabledLayerNames = pLayerNames
		instanceInfo.enabledExtensionCount = pExtensionNames.length
		instanceInfo.ppEnabledExtensionNames = pExtensionNames

		' create an instance
		Local res:Int = _vkFuncs.vkCreateInstance(instanceInfo, Null, Varptr _instance)
		If res <> VK_SUCCESS RuntimeError " Error creating vulkan instance"
	
		'free up the extension names memory used by the CString(s)
		For Local pName:Byte Ptr = EachIn pExtensionNames
			MemFree(pName)
		Next
		For Local pName:Byte Ptr = EachIn pLayerNames
			MemFree(pName)
		Next

		' init the funcs with this instance
		_vkFuncs.InitInstanceFunctions(_instance)
		
		' get the supported instance layers
		Print
		Local instanceLayerCount:UInt
		_vkFuncs.vkEnumerateInstanceLayerProperties(Varptr instanceLayerCount, Null)
		Print "Instance has " + instanceLayerCount + " available layer(s)"
		
		Local pLayerProperties:Byte Ptr = MemAlloc(SizeOf(vkLayerProperties) * instanceLayerCount)
		_vkFuncs.vkEnumerateInstanceLayerProperties(Varptr instanceLayerCount, pLayerProperties)
		
		Local layerProperties:vkLayerProperties[instanceLayerCount]
		For Local i:Int = 0 Until instanceLayerCount
			layerProperties[i] = New vkLayerProperties
			MemCopy(layerProperties[i], pLayerProperties + (SizeOf(vkLayerProperties) * i), SizeOf(vkLayerProperties))
			
			Print "Layer " + i + ": " + String.FromCString(Varptr layerProperties[i].layerName_0) + " - " + String.FromCString(Varptr layerProperties[i].description_0)
		Next
		MemFree(pLayerProperties)
		Print
		
		'get the available instance extensions
		Local instanceExtensionCount:Int
		_vkFuncs.vkEnumerateInstanceExtensionProperties(Null, Varptr instanceExtensionCount, Null)
		Print "Instance has " + instanceExtensionCount + " available extension(s)"
		
		Local pExtensionProperties:Byte Ptr = MemAlloc(SizeOf(vkExtensionProperties) * instanceExtensionCount)
		_vkFuncs.vkEnumerateInstanceExtensionProperties(Null, Varptr instanceExtensionCount, pExtensionProperties)
		
		Local instanceExtensionProperties:vkExtensionProperties[instanceExtensionCount]
		For Local i:Int = 0 Until instanceExtensionCount
			instanceExtensionProperties[i] = New vkExtensionProperties
			MemCopy(instanceExtensionProperties[i], pExtensionProperties + (SizeOf(vkExtensionProperties) * i), SizeOf(vkExtensionProperties))
			
			Print String.FromCString(Varptr instanceExtensionProperties[i].extensionName_0)
		Next
		MemFree(pExtensionProperties)
		Print
	EndMethod
	
	Method InitDevice()
		' get the number of physical devices in the system
		Local physicalDeviceCount:Int = 0
		_vkFuncs.vkEnumeratePhysicalDevices(_instance, Varptr physicalDeviceCount, Null)
		
		Local physicalDevices:Byte Ptr[physicalDeviceCount]
		_vkFuncs.vkEnumeratePhysicalDevices(_instance, Varptr physicalDeviceCount, physicalDevices)
		
		' use just the first device for the time being
		If Not physicalDevices And Not physicalDevices[0] RuntimeError(" Cannot find a suitable physical device")
		_physicalDevice = physicalDevices[0]
		
		' get the queue families
		_vkFuncs.vkGetPhysicalDeviceQueueFamilyProperties(_physicalDevice, Varptr _queueFamilyCount, Null)

		
		' get the queue family properties from the first device
		Local pQueueFamilyProperties:Byte Ptr = MemAlloc(SizeOf(vkQueueFamilyProperties) * _queueFamilyCount)
		_vkFuncs.vkGetPhysicalDeviceQueueFamilyProperties(_physicalDevice, Varptr _queueFamilyCount, pQueueFamilyProperties)
		
		Local queueFamilyProperties:vkQueueFamilyProperties[_queueFamilyCount]
		For Local i:Int = 0 Until _queueFamilyCount
			queueFamilyProperties[i] = New vkQueueFamilyProperties
			MemCopy(queueFamilyProperties[i], pQueueFamilyProperties + (SizeOf(vkQueueFamilyProperties) * i), SizeOf(vkQueueFamilyProperties))
		Next
		MemFree(pQueueFamilyProperties)
				
		Print "Device queues available"
		For Local i:Int = 0 Until _queueFamilyCount ' could use EachIn here
			If queueFamilyProperties[i].queueCount > 0
				If queueFamilyProperties[i].queueFlags & VK_QUEUE_GRAPHICS_BIT
					Print "queue family " + i + " supports graphics rendering"
					_queueGraphicsFamilyIndex = i
				EndIf
				If queueFamilyProperties[i].queueFlags & VK_QUEUE_COMPUTE_BIT
					Print "queue family " + i + " supports compute work"
				EndIf
				If queueFamilyProperties[i].queueFlags & VK_QUEUE_TRANSFER_BIT
					Print "queue family " + i + " supports gpu transfers"
					_queueTransferFamilyIndex = i
				EndIf
			EndIf
		Next
		Print
		
		' throw if no graphics queue
		If _queueGraphicsFamilyIndex = -1 RuntimeError(" Gpu doesn't support graphics rendering")
		
		' transfers are implicit if a graphics queue is available so this isn't necessraily an error if none are specified
		If _queueTransferFamilyIndex = -1
			_queueTransferFamilyIndex = _queueGraphicsFamilyIndex 
		EndIf
		
		' create structures for the queues that we want to use
		Local queuePriorities:Float[] = [1.0]
		Local queueCreateInfo:vkDeviceQueueCreateInfo[2]
		queueCreateInfo[0] = New vkDeviceQueueCreateInfo
		queueCreateInfo[0].sType = VK_STRUCTURE_TYPE_DEVICE_QUEUE_CREATE_INFO
		queueCreateInfo[0].queueFamilyIndex = _queueGraphicsFamilyIndex
		queueCreateInfo[0].queueCount = 1
		queueCreateInfo[0].pQueuePriorities = Varptr queuePriorities
		
		queueCreateInfo[1] = New vkDeviceQueueCreateInfo
		queueCreateInfo[1].sType = VK_STRUCTURE_TYPE_DEVICE_QUEUE_CREATE_INFO
		queueCreateInfo[1].queueFamilyIndex = _queueTransferFamilyIndex
		queueCreateInfo[1].queueCount = 1
		queueCreateInfo[1].pQueuePriorities = Varptr queuePriorities
		
		' make a contiguous array of vkDeviceQueueCreateInfo's for creating the device
		Local pQueueCreateInfos:Byte Ptr = MemAlloc(SizeOf(vkDeviceQueueCreateInfo) * SizeOf(queueCreateInfo))
		For Local i:Int = 0 Until queueCreateInfo.length
			MemCopy(pQueueCreateInfos + (SizeOf(vkDeviceQueueCreateInfo) * i), queueCreateInfo[i], SizeOf(vkDeviceQueueCreateInfo))
		Next

		' enumerate the device extension properties
		Local deviceExtensionCount:UInt
		_vkFuncs.vkEnumerateDeviceExtensionProperties(_physicalDevice, Null, Varptr deviceExtensionCount, Null)
		Print "Device has " + deviceExtensionCount + " extension(s)"
		
		Local pDeviceExtensionProperties:Byte Ptr = MemAlloc(SizeOf(vkExtensionProperties) * deviceExtensionCount)
		_vkFuncs.vkEnumerateDeviceExtensionProperties(_physicalDevice, Null, Varptr deviceExtensionCount, pDeviceExtensionProperties)
		
		Local deviceExtensionProperties:vkExtensionProperties[deviceExtensionCount]
		For Local i:Int = 0 Until deviceExtensionCount
			deviceExtensionProperties[i] = New vkExtensionProperties
			MemCopy(deviceExtensionProperties[i], pDeviceExtensionProperties + (SizeOf(vkExtensionProperties) * i), SizeOf(vkExtensionProperties))
			
			Print String.FromCString(Varptr deviceExtensionProperties[i].extensionName_0)
		Next
		MemFree(pDeviceExtensionProperties)
		Print
		
		Local deviceExtensionNames:Byte Ptr[1]
		deviceExtensionNames[0] = "VK_KHR_swapchain".ToCString()
		
		' create the device
		Local deviceCreateInfo:vkDeviceCreateInfo = New vkDeviceCreateInfo
		deviceCreateInfo.sType = VK_STRUCTURE_TYPE_DEVICE_CREATE_INFO
		deviceCreateInfo.queueCreateInfoCount = 2
		deviceCreateInfo.pQueueCreateInfos = pQueueCreateInfos
		deviceCreateInfo.enabledExtensionCount = deviceExtensionNames.length
		deviceCreateInfo.ppEnabledExtensionNames = deviceExtensionNames
		
		Local logicalDevice:Byte Ptr
		Local res:Int =_vkFuncs.vkCreateDevice(_physicalDevice, deviceCreateInfo, Null, Varptr _logicalDevice)
		If res <> VK_SUCCESS RuntimeError(" Cannot create a vulkan logical device")
		
		For Local bp:Byte Ptr = EachIn deviceExtensionNames
			MemFree(bp)
		Next
		
		' free up the contigous array
		MemFree(pQueueCreateInfos)
		
		' now initialise the device functions - this saves an indirection of calling the 'universal' function pointer
		_vkFuncs.InitDeviceFunctions(_logicalDevice)

		' get the device graphics and transfer queue
		_vkFuncs.vkGetDeviceQueue(_logicalDevice, _queueGraphicsFamilyIndex, 0, Varptr _queueGraphics)
		_vkFuncs.vkGetDeviceQueue(_logicalDevice, _queueTransferFamilyIndex, 0, Varptr _queueTransfer)
	EndMethod
	
	Method InitRenderingResources()
		_renderingResources = New VulkanRenderingResource[_swapchainImages.length]
		For Local i:Int = 0 Until _renderingResources.length
			_renderingResources[i] = New VulkanRenderingResource
		Next
	EndMethod
			
	Method InitSemaphores()
		' create some semaphores for syncing the rendering
		Local semaphoreCreateInfo:vkSemaphoreCreateInfo = New vkSemaphoreCreateInfo
		semaphoreCreateInfo.sType = VK_STRUCTURE_TYPE_SEMAPHORE_CREATE_INFO

		For Local i:Int = 0 Until _renderingResources.length
			Local res:Int =_vkFuncs.vkCreateSemaphore(_logicalDevice, semaphoreCreateInfo, Null, Varptr _renderingResources[i]._semaphoreRenderingFinished)
			If res <> VK_SUCCESS RuntimeError(" Cannot create a semaphore")

			res =_vkFuncs.vkCreateSemaphore(_logicalDevice, semaphoreCreateInfo, Null, Varptr _renderingResources[i]._semaphoreImageAvailable)
			If res <> VK_SUCCESS RuntimeError(" Cannot create a semaphore")
		Next
	EndMethod
	
	Method InitFences()
		Local fenceCreateInfo:vkFenceCreateInfo = New vkFenceCreateInfo
		fenceCreateInfo.sType = VK_STRUCTURE_TYPE_FENCE_CREATE_INFO
		fenceCreateInfo.pNext = Null
		fenceCreateInfo.flags = VK_FENCE_CREATE_SIGNALED_BIT
		
		For Local i:Int = 0 Until _renderingResources.length
			Local res:Int =_vkFuncs.vkCreateFence(_logicalDevice, fenceCreateInfo, Null, Varptr _renderingResources[i]._fence)
			If res <> VK_SUCCESS RuntimeError(" Cannot create fence")
		Next
	EndMethod

	Method InitSurface()
		' create a presentation surface
		Local surfaceCreateInfo:vkWin32SurfaceCreateInfoKHR = New vkWin32SurfaceCreateInfoKHR
		surfaceCreateInfo.sType = VK_STRUCTURE_TYPE_WIN32_SURFACE_CREATE_INFO_KHR
		surfaceCreateInfo.hInstance = GetModuleHandleA(Null)
		surfaceCreateInfo.hWnd = _hWnd

		Local res:Int =_vkFuncs.vkCreateWin32SurfaceKHR(_instance, surfaceCreateInfo, Null, Varptr _surface)
		If res <> VK_SUCCESS RuntimeError(" Cannot create the vulkan win32 surface")
	EndMethod
	
	Method InitDepthStencil()
		Local count:uint = 1 ' _swapchainImages.length
		_depthImage = New Byte Ptr[count]
		_depthImageMemory = New Byte Ptr[count]
		_depthImageView = New Byte Ptr[count]
		
		For Local index:Int = 0 Until _depthImage.length
			Local depthCreateInfo:vkImageCreateInfo = New vkImageCreateInfo
			depthCreateInfo.sType = VK_STRUCTURE_TYPE_IMAGE_CREATE_INFO
			depthCreateInfo.pNext = Null
			depthCreateInfo.flags = 0
			depthCreateInfo.imageType = VK_IMAGE_TYPE_2D
			depthCreateInfo.format = VK_FORMAT_D16_UNORM
			depthCreateInfo.extent_width = _swapchainImageWidth
			depthCreateInfo.extent_height = _swapchainImageHeight
			depthCreateInfo.extent_depth = 1
			depthCreateInfo.miplevels = 1
			depthCreateInfo.arrayLayers = 1
			depthCreateInfo.samples = VK_SAMPLE_COUNT_1_BIT
			depthCreateInfo.tiling = VK_IMAGE_TILING_OPTIMAL
			depthCreateInfo.usage = VK_IMAGE_USAGE_DEPTH_STENCIL_ATTACHMENT_BIT
			depthCreateInfo.sharingMode = VK_SHARING_MODE_EXCLUSIVE
			depthCreateInfo.queueFamilyIndexCount = 0
			depthCreateInfo.pQueueFamilyIndices = Null
			depthCreateInfo.initialLayout = VK_IMAGE_LAYOUT_UNDEFINED
	
			Local res:Int = _vkFuncs.vkCreateImage(_logicalDevice, depthCreateInfo, Null, Varptr _depthImage[index])
			If res <> VK_SUCCESS RuntimeError(" Cannot create depth image")
			
			' get the memory bits needed
			Local bufferMemoryRequirements:vkMemoryRequirements = New vkMemoryRequirements
			_vkFuncs.vkGetImageMemoryRequirements(_logicalDevice, _depthImage[index], bufferMemoryRequirements)

			Local memoryProperties:vkPhysicalDeviceMemoryProperties = New vkPhysicalDeviceMemoryProperties
			_vkFuncs.vkGetPhysicalDeviceMemoryProperties(_physicalDevice, memoryProperties)
	
			' allocate the correct memory
			For Local i:UInt = 0 Until memoryProperties.memoryTypeCount
				If bufferMemoryRequirements.memoryTypeBits & (1 Shl i)
					Local pMemoryTypePropertyFlags:UInt Ptr = (Varptr memoryProperties.memoryTypes_propertyFlags_0) + (i*2)
					If pMemoryTypePropertyFlags[0] & VK_MEMORY_PROPERTY_DEVICE_LOCAL_BIT
						Local memoryAllocateInfo:vkMemoryAllocateInfo = New vkMemoryAllocateInfo
						memoryAllocateInfo.sType = VK_STRUCTURE_TYPE_MEMORY_ALLOCATE_INFO
						memoryAllocateInfo.pNext = Null
						memoryAllocateInfo.allocationSize = bufferMemoryRequirements.size
						memoryAllocateInfo.memoryTypeIndex = i
						
						Local res:Int =_vkFuncs.vkAllocateMemory(_logicalDevice, memoryAllocateInfo, Null, Varptr _depthImageMemory[index])
						If res <> VK_SUCCESS RuntimeError(" Cannot allocate memory for texture")
						Exit
					EndIf
				EndIf
			Next
	
			' bind the allocated memory to the texture
			res = _vkFuncs.vkBindImageMemory(_logicalDevice, _depthImage[index], _depthImageMemory[index], 0)
			If res <> VK_SUCCESS RuntimeError(" Cannot bind memory to texture")
	
			' transition from undefined to depth_stencil_attachment_optimal
			Local beginInfo:vkCommandBufferBeginInfo = New vkCommandBufferBeginInfo
			beginInfo.sType = VK_STRUCTURE_TYPE_COMMAND_BUFFER_BEGIN_INFO
			beginInfo.pNext = Null
			beginInfo.flags = VK_COMMAND_BUFFER_USAGE_ONE_TIME_SUBMIT_BIT
			_vkFuncs.vkBeginCommandBuffer(_renderingResources[0]._commandBuffer, beginInfo)
			
			Local memoryBarrier:vkImageMemoryBarrier = New vkImageMemoryBarrier
			memoryBarrier.sType = VK_STRUCTURE_TYPE_IMAGE_MEMORY_BARRIER
			memoryBarrier.pNext = Null
			memoryBarrier.srcAccessMask = 0
			memoryBarrier.dstAccessMask = VK_ACCESS_DEPTH_STENCIL_ATTACHMENT_READ_BIT | VK_ACCESS_DEPTH_STENCIL_ATTACHMENT_WRITE_BIT
			memoryBarrier.oldLayout = VK_IMAGE_LAYOUT_UNDEFINED
			memoryBarrier.newLayout = VK_IMAGE_LAYOUT_DEPTH_STENCIL_ATTACHMENT_OPTIMAL
			memoryBarrier.srcQueueFamilyIndex = VK_QUEUE_FAMILY_IGNORED
			memoryBarrier.dstQueueFamilyIndex = VK_QUEUE_FAMILY_IGNORED
			memoryBarrier.image = _depthImage[index]
			memoryBarrier.subresourceRange_aspectMask = VK_IMAGE_ASPECT_DEPTH_BIT
			memoryBarrier.subresourceRange_baseMipLevel = 0
			memoryBarrier.subresourceRange_levelCount = 1
			memoryBarrier.subresourceRange_baseArrayLayer = 0
			memoryBarrier.subresourceRange_layerCount = 1
			
			_vkFuncs.vkCmdPipelineBarrier(	_renderingResources[0]._commandBuffer,..
											VK_PIPELINE_STAGE_TOP_OF_PIPE_BIT,..
											VK_PIPELINE_STAGE_TOP_OF_PIPE_BIT,..
											0,..
											0, Null,..
											0, Null,..
											1, memoryBarrier)
											
			_vkFuncs.vkEndCommandBuffer(_renderingResources[0]._commandBuffer)
			
			Local waitDstStageMask:UInt = VK_PIPELINE_STAGE_TRANSFER_BIT
			Local submitInfo:vkSubmitInfo = New vkSubmitInfo
			submitInfo.sType = VK_STRUCTURE_TYPE_SUBMIT_INFO
			submitInfo.pNext = Null
			submitInfo.waitSemaphoreCount = 0
			submitInfo.pWaitSemaphores = Null
			submitInfo.pWaitDstStageMask = Varptr waitDstStageMask
			submitInfo.commandBufferCount = 1
			submitInfo.pCommandBuffers = Varptr _renderingResources[0]._commandBuffer
			submitInfo.signalSemaphoreCount = 0
			submitInfo.pSignalSemaphores = 0
	
			' send the work to be done
			_vkFuncs.vkResetFences(_logicalDevice, 1, Varptr _renderingResources[0]._fence)
			res =_vkFuncs.vkQueueSubmit(_queueGraphics, 1, submitInfo, _renderingResources[0]._fence)
			If res <> VK_SUCCESS RuntimeError(" vkQueueSubmit failed")
	
			' wait for the work to finish
			_vkFuncs.vkWaitForFences(_logicalDevice, 1, Varptr _renderingResources[0]._fence, VK_TRUE, ULong(-1))
			
			' create a view of the image
			Local depthViewCreateInfo:vkImageViewCreateInfo = New vkImageViewCreateInfo
			depthViewCreateInfo.sType = VK_STRUCTURE_TYPE_IMAGE_VIEW_CREATE_INFO
			depthViewCreateInfo.pNext = Null
			depthViewCreateInfo.flags = 0
			depthViewCreateInfo.image = _depthImage[index]
			depthViewCreateInfo.viewType = VK_IMAGE_VIEW_TYPE_2D
			depthViewCreateInfo.format = VK_FORMAT_D16_UNORM
			depthViewCreateInfo.components_r = VK_COMPONENT_SWIZZLE_IDENTITY
			depthViewCreateInfo.components_g = VK_COMPONENT_SWIZZLE_IDENTITY
			depthViewCreateInfo.components_b = VK_COMPONENT_SWIZZLE_IDENTITY
			depthViewCreateInfo.components_a = VK_COMPONENT_SWIZZLE_IDENTITY
			depthViewCreateInfo.subresourceRange_aspectMask = VK_IMAGE_ASPECT_DEPTH_BIT
			depthViewCreateInfo.subresourceRange_baseMipLevel = 0
			depthViewCreateInfo.subresourceRange_levelCount = 1
			depthViewCreateInfo.subresourceRange_baseArrayLayer = 0
			depthViewCreateInfo.subresourceRange_layerCount = 1
			
			res = _vkFuncs.vkCreateImageView(_logicalDevice, depthViewCreateInfo, Null, Varptr _depthImageView[index])
			If res <> VK_SUCCESS RuntimeError(" Cannot create texure image view")
		Next
	EndMethod
	
	Method InitSwapchain()
		' query which queue family index will be suitable for presenting
		For Local i:UInt = 0 Until _queueFamilyCount
			Local supported:UInt
			_vkFuncs.vkGetPhysicalDeviceSurfaceSupportKHR(_physicalDevice, i, _surface, Varptr supported)
			If supported _queuePresentFamilyIndex = i
		Next
		If _queuePresentFamilyIndex = -1 RuntimeError(" Cannot find a queue that supports a presenting")
		_vkFuncs.vkGetDeviceQueue(_logicalDevice, _queuePresentFamilyIndex, 0, Varptr _queuePresent)
		
		' query the surface capabilities
		Local surfaceCapabilities:vkSurfaceCapabilitiesKHR = New vkSurfaceCapabilitiesKHR
		_vkFuncs.vkGetPhysicalDeviceSurfaceCapabilitiesKHR(_physicalDevice, _surface, surfaceCapabilities)
		_swapchainImageWidth = surfaceCapabilities.currentExtent_Width
		_swapchainImageHeight = surfaceCapabilities.currentExtent_Height

		' query the available surface formats
		Local surfaceFormatCount:UInt
		_vkFuncs.vkGetPhysicalDeviceSurfaceFormatsKHR(_physicalDevice, _surface, Varptr surfaceFormatCount, Null)
		
		Local pSurfaceFormats:Byte Ptr = MemAlloc(SizeOf(vkSurfaceFormatKHR) * surfaceFormatCount)
		_vkFuncs.vkGetPhysicalDeviceSurfaceFormatsKHR(_physicalDevice, _surface, Varptr surfaceFormatCount, pSurfaceFormats)
		
		Local surfaceFormats:vkSurfaceFormatKHR[surfaceFormatCount]
		For Local i:Uint = 0 Until surfaceFormatCount	
			surfaceFormats[i] = New vkSurfaceFormatKHR
			MemCopy(surfaceFormats[i], pSurfaceFormats + (SizeOf(vkSurfaceFormatKHR) * i), SizeOf(vkSurfaceFormatKHR))
		Next
		MemFree(pSurfaceFormats)
		
		' query supported presentation modes
		Local presentModeCount:UInt
		_vkFuncs.vkGetPhysicalDeviceSurfacePresentModesKHR(_physicalDevice, _surface, Varptr presentModeCount, Null)
		
		Local presentModes:UInt[presentModeCount]
		_vkFuncs.vkGetPhysicalDeviceSurfacePresentModesKHR(_physicalDevice, _surface, Varptr presentModeCount, presentModes)
		
		' create the swap chain
		Local swapchainCreateInfo:vkSwapchainCreateInfoKHR = New vkSwapchainCreateInfoKHR
		swapchainCreateInfo.sType = VK_STRUCTURE_TYPE_SWAPCHAIN_CREATE_INFO_KHR
		swapchainCreateInfo.surface = _surface
		swapchainCreateInfo.minimageCount = surfaceCapabilities.minImageCount + 2
		swapchainCreateInfo.imageFormat = surfaceFormats[0].format
		swapchainCreateInfo.imageColorSpace = surfaceFormats[0].colorSpace
		swapchainCreateInfo.imageExtent_Width = surfaceCapabilities.currentExtent_Width
		swapchainCreateInfo.imageExtent_Height = surfaceCapabilities.currentExtent_Height
		swapchainCreateInfo.imageArrayLayers = 1
		swapchainCreateInfo.imageUsage = VK_IMAGE_USAGE_COLOR_ATTACHMENT_BIT
		swapchainCreateInfo.imageSharingMode = VK_SHARING_MODE_EXCLUSIVE
		swapchainCreateInfo.preTransform = surfaceCapabilities.currentTransform
		swapchainCreateInfo.compositeAlpha = VK_COMPOSITE_ALPHA_OPAQUE_BIT_KHR
		swapchainCreateInfo.presentMode = VK_PRESENT_MODE_FIFO_KHR
		swapchainCreateInfo.oldSwapchain = Null
		
		Local res:Int =_vkFuncs.vkCreateSwapchainKHR(_logicalDevice, swapchainCreateInfo, Null, Varptr _swapchain)
		If res <> VK_SUCCESS RuntimeError(" Cannot create the swapchain")
		
		' get the swap chain images - MUST call this before any vkAcquireNextImageKHR calls
		Local imageCount:UInt
		_vkFuncs.vkGetSwapchainImagesKHR(_logicalDevice, _swapchain, Varptr imageCount, Null)
		
		_swapchainImages = New Byte Ptr[imageCount]
		_vkFuncs.vkGetSwapchainImagesKHR(_logicalDevice, _swapchain, Varptr imageCount, _swapchainImages)
		
		' save the format for other structs to use
		_swapchainImageFormat = swapchainCreateInfo.imageFormat
	EndMethod
	
	Method InitFramebuffers()
		Local count:Int = _swapchainImages.length
		_swapchainImageViews = New Byte Ptr[count]
		
		Local imageViewCreateInfo:vkImageViewCreateInfo = New vkImageViewCreateInfo
		imageViewCreateInfo.sType = VK_STRUCTURE_TYPE_IMAGE_VIEW_CREATE_INFO
		imageViewCreateInfo.pNext = Null
		imageViewCreateInfo.flags = 0
		imageViewCreateInfo.viewType = VK_IMAGE_VIEW_TYPE_2D
		imageViewCreateInfo.format = _swapchainImageFormat
		imageViewCreateInfo.components_r = VK_COMPONENT_SWIZZLE_IDENTITY
		imageViewCreateInfo.components_g = VK_COMPONENT_SWIZZLE_IDENTITY
		imageViewCreateInfo.components_b = VK_COMPONENT_SWIZZLE_IDENTITY
		imageViewCreateInfo.components_a = VK_COMPONENT_SWIZZLE_IDENTITY
		imageViewCreateInfo.subresourceRange_aspectMask = VK_IMAGE_ASPECT_COLOR_BIT
		imageViewCreateInfo.subresourceRange_baseMipLevel = 0
		imageViewCreateInfo.subresourceRange_levelCount = 1
		imageViewCreateInfo.subresourceRange_baseArrayLayer = 0
		imageViewCreateInfo.subresourceRange_layerCount = 1
		
		Local framebufferCreateInfo:vkFrameBufferCreateInfo = New vkFrameBufferCreateInfo
		framebufferCreateInfo.sType = VK_STRUCTURE_TYPE_FRAMEBUFFER_CREATE_INFO
		framebufferCreateInfo.pNext = Null
		framebufferCreateInfo.flags = 0
		framebufferCreateInfo.renderpass = _renderpass
		'framebufferCreateInfo.pAttachments ' assigned in the loop below
		framebufferCreateInfo.attachmentCount = 2 ' must equal the attachment count in the renderpass
		framebufferCreateInfo.width = _swapchainImageWidth
		framebufferCreateInfo.height = _swapchainImageHeight
		framebufferCreateInfo.layers = 1

		' we'll transition the initial image state from undefined to present in here
		Local commandBufferBeginInfo:vkCommandBufferBeginInfo = New vkCommandBufferBeginInfo
		commandBufferBeginInfo.sType = VK_STRUCTURE_TYPE_COMMAND_BUFFER_BEGIN_INFO
		commandBufferBeginInfo.flags = VK_COMMAND_BUFFER_USAGE_ONE_TIME_SUBMIT_BIT

		For Local i:Int = 0 Until count
			_vkFuncs.vkResetFences(_logicalDevice, 1, Varptr _renderingResources[i]._fence)
			_vkFuncs.vkBeginCommandBuffer(_renderingResources[0]._commandBuffer, commandBufferBeginInfo)
			
			Local memoryBarrierLayoutTransition:vkImageMemoryBarrier = New vkImageMemoryBarrier
			memoryBarrierLayoutTransition.sType = VK_STRUCTURE_TYPE_IMAGE_MEMORY_BARRIER
			memoryBarrierLayoutTransition.pNext = Null
			memoryBarrierLayoutTransition.srcAccessMask = 0
			memoryBarrierLayoutTransition.dstAccessMask = VK_ACCESS_MEMORY_READ_BIT
			memoryBarrierLayoutTransition.oldLayout = VK_IMAGE_LAYOUT_UNDEFINED
			memoryBarrierLayoutTransition.newLayout = VK_IMAGE_LAYOUT_PRESENT_SRC_KHR
			memoryBarrierLayoutTransition.srcQueueFamilyIndex = VK_QUEUE_FAMILY_IGNORED
			memoryBarrierLayoutTransition.dstQueueFamilyIndex = VK_QUEUE_FAMILY_IGNORED
			memoryBarrierLayoutTransition.image = _swapchainImages[i]
			memoryBarrierLayoutTransition.subresourceRange_aspectMask = VK_IMAGE_ASPECT_COLOR_BIT
			memoryBarrierLayoutTransition.subresourceRange_baseMipLevel = 0
			memoryBarrierLayoutTransition.subresourceRange_levelCount = 1
			memoryBarrierLayoutTransition.subresourceRange_baseArrayLayer = 0
			memoryBarrierLayoutTransition.subresourceRange_layerCount = 1

			_vkFuncs.vkCmdPipelineBarrier(_renderingResources[0]._commandBuffer,..
										  VK_PIPELINE_STAGE_TOP_OF_PIPE_BIT,..
										  VK_PIPELINE_STAGE_TOP_OF_PIPE_BIT,..
										  0,..
										  0, Null,..
										  0, Null,..
										  1, memoryBarrierLayoutTransition)

			_vkFuncs.vkEndCommandBuffer(_renderingResources[0]._commandBuffer)
			
			Local waitStageMask:UInt = VK_PIPELINE_STAGE_COLOR_ATTACHMENT_OUTPUT_BIT
			Local submitInfo:vkSubmitInfo = New vkSubmitInfo
			submitInfo.sType = VK_STRUCTURE_TYPE_SUBMIT_INFO
			submitInfo.pNext = Null
			submitInfo.WaitSemaphoreCount = 0
			submitInfo.pWaitSemaphores = Null
			submitInfo.pWaitDstStageMask = Varptr waitStageMask
			submitInfo.commandBufferCount = 1
			submitInfo.pCommandBuffers = Varptr _renderingResources[0]._commandBuffer
			submitInfo.signalSemaphoreCount = 0
			submitInfo.pSignalSemaphores = Null

			Local res:Int = _vkFuncs.vkQueueSubmit(_queueGraphics, 1, submitInfo, _renderingResources[i]._fence)
			_vkFuncs.vkWaitForFences(_logicalDevice, 1, Varptr _renderingResources[i]._fence, VK_TRUE, ULong(-1))
		
			imageViewCreateInfo.image = _swapchainImages[i]
			
			res =_vkFuncs.vkCreateImageView(_logicalDevice, imageViewCreateInfo, Null, Varptr _swapchainImageViews[i])
			If res <> VK_SUCCESS RuntimeError(" Cannot create image view")

			Local pAttachments:Byte Ptr[] = [_swapchainImageViews[i], _depthImageView[0]]
			framebufferCreateInfo.pAttachments = pAttachments
			
			res =_vkFuncs.vkCreateFrameBuffer(_logicalDevice, framebufferCreateInfo, Null, Varptr _renderingResources[i]._framebuffer)
			If res <> VK_SUCCESS RuntimeError(" Cannot create framebuffer object")
		Next
	EndMethod
	
	Method InitShaders()
		Local vertexShaderFilename:String = AppDir + "\vert.spv"
		Local fragmentShaderFilename:String = AppDir + "\frag.spv"

		' create the vertex shader
		Local shaderFilesize:Long = FileSize(vertexShaderFilename)
		Local shaderByteCode:Byte Ptr = MemAlloc(shaderFilesize)
		
		Local stream:TStream = OpenFile(vertexShaderFilename, True, False)
		If Not stream RuntimeError(" Cannot find " + vertexShaderFilename)
		For Local i:Long = 0 Until shaderFilesize
			shaderByteCode[i] = ReadByte(stream)
		Next
		CloseStream(stream)
		
		Local shaderModuleCreateInfo:vkShaderModuleCreateInfo = New vkShaderModuleCreateInfo
		shaderModuleCreateInfo.sType = VK_STRUCTURE_TYPE_SHADER_MODULE_CREATE_INFO
		shaderModuleCreateInfo.pNext = Null
		shaderModuleCreateInfo.flags = 0
		shaderModuleCreateInfo.codeSize = shaderFilesize
		shaderModuleCreateInfo.pCode = shaderByteCode
		
		Local res:Int =_vkFuncs.vkCreateShaderModule(_logicalDevice, shaderModuleCreateInfo, Null, Varptr _vertexShader)
		If res <> VK_SUCCESS RuntimeError(" Cannot create vertex shader")
		MemFree(shaderByteCode)
		
		' create the fragment shader
		shaderFilesize = FileSize(fragmentShaderFilename)
		shaderByteCode = MemAlloc(shaderFilesize)
		
		stream = OpenFile(fragmentShaderFilename, True, False)
		If Not stream RuntimeError(" Cannot find " + fragmentShaderFilename)
		For Local i:Long = 0 Until shaderFilesize
			shaderByteCode[i] = ReadByte(stream)
		Next
		CloseStream(stream)
		
		shaderModuleCreateInfo.codeSize = shaderFilesize
		shaderModuleCreateInfo.pCode = shaderByteCode
		
		res =_vkFuncs.vkCreateShaderModule(_logicalDevice, shaderModuleCreateInfo, Null, Varptr _fragmentShader)
		If res <> VK_SUCCESS RuntimeError(" Cannot create fragment shader")
		MemFree(shaderByteCode)
	EndMethod
	
	Method InitVertexBuffer()
		' the vertex data
		Local vertexData:Float[] = [ -0.7, -0.7, 0.0, 1.0,.. ' xyzw
									  1.0,  0.0, 0.0, 0.0,.. ' rgba
									  0.0,  0.0,..			 ' uv
									
									 -0.7,  0.7, 0.0, 1.0,..
									  0.0,  1.0, 0.0, 0.0,..
									  0.0,  1.0,..
									
									  0.7, -0.7, 0.0, 1.0,..
									  0.0,  0.0, 1.0, 0.0,..
									  1.0,  0.0,..
									
									  0.7,  0.7, 0.0, 1.0,..
									  0.3,  0.3, 0.3, 0.0,..
									  1.0,  1.0 ]
		
		' create a staging buffer
		Local bufferCreateInfo:vkBufferCreateInfo = New vkBufferCreateInfo
		bufferCreateInfo.sType = VK_STRUCTURE_TYPE_BUFFER_CREATE_INFO
		bufferCreateInfo.pNext = Null
		bufferCreateInfo.flags = 0
		bufferCreateInfo.size = SizeOf(vertexData)
		bufferCreateInfo.usage = VK_BUFFER_USAGE_TRANSFER_SRC_BIT
		bufferCreateInfo.sharingMode = VK_SHARING_MODE_EXCLUSIVE
		bufferCreateInfo.queueFamilyIndexCount = _queueGraphicsFamilyIndex
		bufferCreateInfo.pQueueFamilyIndices = Null

		Local stagingBuffer:Byte Ptr
		Local stagingBufferMemory:Byte Ptr
		Local res:Int =_vkFuncs.vkCreateBuffer(_logicalDevice, bufferCreateInfo, Null, Varptr stagingBuffer)
		If res <> VK_SUCCESS RuntimeError(" Cannot create staging buffer")
		
		' allocate some memory for the staging buffer
		Local bufferMemoryRequirements:vkMemoryRequirements = New vkMemoryRequirements
		_vkFuncs.vkGetBufferMemoryRequirements(_logicalDevice, stagingBuffer, bufferMemoryRequirements)

		Local memoryProperties:vkPhysicalDeviceMemoryProperties = New vkPhysicalDeviceMemoryProperties
		_vkFuncs.vkGetPhysicalDeviceMemoryProperties(_physicalDevice, memoryProperties)

		For Local i:UInt = 0 Until memoryProperties.memoryTypeCount
			If bufferMemoryRequirements.memoryTypeBits & (1 Shl i)
				Local pMemoryTypePropertyFlags:UInt Ptr = (Varptr memoryProperties.memoryTypes_propertyFlags_0) + (i*2)
				If pMemoryTypePropertyFlags[0] & VK_MEMORY_PROPERTY_HOST_VISIBLE_BIT
					Local memoryAllocateInfo:vkMemoryAllocateInfo = New vkMemoryAllocateInfo
					memoryAllocateInfo.sType = VK_STRUCTURE_TYPE_MEMORY_ALLOCATE_INFO
					memoryAllocateInfo.pNext = Null
					memoryAllocateInfo.allocationSize = bufferMemoryRequirements.size
					memoryAllocateInfo.memoryTypeIndex = i
					
					Local res:Int =_vkFuncs.vkAllocateMemory(_logicalDevice, memoryAllocateInfo, Null, Varptr stagingBufferMemory)
					If res <> VK_SUCCESS RuntimeError(" Cannot allocate memory for staging buffer")
					Exit
				EndIf
			EndIf
		Next
		
		' bind the memory to the staging buffer
		res =_vkFuncs.vkBindBufferMemory(_logicalDevice, stagingBuffer, stagingBufferMemory, 0)
		If res <> VK_SUCCESS RuntimeError(" Cannot bind staging memory for the staging buffer")

		' create a device local vertex buffer			
		bufferCreateInfo = New vkBufferCreateInfo
		bufferCreateInfo.sType = VK_STRUCTURE_TYPE_BUFFER_CREATE_INFO
		bufferCreateInfo.pNext = Null
		bufferCreateInfo.flags = 0
		bufferCreateInfo.size = SizeOf(vertexData)
		bufferCreateInfo.usage = VK_BUFFER_USAGE_VERTEX_BUFFER_BIT | VK_BUFFER_USAGE_TRANSFER_DST_BIT
		bufferCreateInfo.sharingMode = VK_SHARING_MODE_EXCLUSIVE
		bufferCreateInfo.queueFamilyIndexCount = _queueGraphicsFamilyIndex
		bufferCreateInfo.pQueueFamilyIndices = Null

		res =_vkFuncs.vkCreateBuffer(_logicalDevice, bufferCreateInfo, Null, Varptr _vertexbuffer)
		If res <> VK_SUCCESS RuntimeError(" Cannot create vertex buffer")
		
		' allocate memory for the buffer
		bufferMemoryRequirements = New vkMemoryRequirements
		_vkFuncs.vkGetBufferMemoryRequirements(_logicalDevice, _vertexBuffer, bufferMemoryRequirements)

		memoryProperties = New vkPhysicalDeviceMemoryProperties
		_vkFuncs.vkGetPhysicalDeviceMemoryProperties(_physicalDevice, memoryProperties)

		For Local i:UInt = 0 Until memoryProperties.memoryTypeCount
			If bufferMemoryRequirements.memoryTypeBits & (1 Shl i)
				Local pMemoryTypePropertyFlags:UInt Ptr = (Varptr memoryProperties.memoryTypes_propertyFlags_0) + (i*2)
				If pMemoryTypePropertyFlags[0] & VK_MEMORY_PROPERTY_DEVICE_LOCAL_BIT
					Local memoryAllocateInfo:vkMemoryAllocateInfo = New vkMemoryAllocateInfo
					memoryAllocateInfo.sType = VK_STRUCTURE_TYPE_MEMORY_ALLOCATE_INFO
					memoryAllocateInfo.pNext = Null
					memoryAllocateInfo.allocationSize = bufferMemoryRequirements.size
					memoryAllocateInfo.memoryTypeIndex = i
					
					Local res:Int =_vkFuncs.vkAllocateMemory(_logicalDevice, memoryAllocateInfo, Null, Varptr _vertexBufferMemory)
					If res <> VK_SUCCESS RuntimeError(" Cannot allocate memory for vertex buffer")
					Exit
				EndIf
			EndIf
		Next
		
		' bind the memory to the vertex buffer
		res =_vkFuncs.vkBindBufferMemory(_logicalDevice, _vertexBuffer, _vertexBufferMemory, 0)
		If res <> VK_SUCCESS RuntimeError(" Cannot bind the vertex memory for the vertex buffer")
	
		' upload the vertex data to the staging buffer
		Local pStagingMemory:Byte Ptr
		_vkFuncs.vkMapMemory(_logicalDevice, stagingBufferMemory, ULong(0), ULong(SizeOf(VertexData)), ULong(0), Varptr pStagingMemory)
		MemCopy(pStagingMemory, VertexData, SizeOf(VertexData))
		_vkFuncs.vkUnmapMemory(_logicalDevice, stagingBufferMemory)
		
		' use a command buffer to push from the staging buffer to the device buffer
		Local commandBufferBeginInfo:vkCommandBufferBeginInfo = New vkCommandBufferBeginInfo
		commandBufferBeginInfo.sType = VK_STRUCTURE_TYPE_COMMAND_BUFFER_BEGIN_INFO
		commandBufferBeginInfo.pNext = Null
		commandBufferBeginInfo.flags = VK_COMMAND_BUFFER_USAGE_ONE_TIME_SUBMIT_BIT
		commandBufferBeginInfo.pInheritanceInfo = Null

		Local cmdBuffer:Byte Ptr = _renderingResources[0]._commandBuffer
		_vkFuncs.vkBeginCommandBuffer(cmdBuffer, commandBufferBeginInfo)

		Local bufferCopy:vkBufferCopy = New vkBufferCopy
		bufferCopy.srcOffset = 0
		bufferCopy.dstOffset = 0
		bufferCopy.size = SizeOf(VertexData)
		
		_vkFuncs.vkCmdCopyBuffer(cmdBuffer, stagingBuffer, _vertexBuffer, 1, bufferCopy)
		_vkFuncs.vkEndCommandBuffer(cmdBuffer)
		
		Local submitInfo:vkSubmitInfo = New vkSubmitInfo
		submitInfo.sType = VK_STRUCTURE_TYPE_SUBMIT_INFO
		submitInfo.pNext= Null
		submitInfo.waitSemaphoreCount = 0
		submitInfo.pWaitSemaphores = Null
		submitInfo.commandBufferCount = 1
		submitInfo.pCommandBuffers = Varptr cmdBuffer
		submitInfo.signalSemaphoreCount = 0
		submitInfo.pSignalSemaphores = Null
		
		res =_vkFuncs.vkQueueSubmit(_queueGraphics, 1, submitInfo, Null)
		_vkFuncs.vkDeviceWaitIdle(_logicalDevice)

		_vkFuncs.vkFreeMemory(_logicalDevice, stagingBufferMemory, Null)
		_vkFuncs.vkDestroyBuffer(_logicalDevice, stagingBuffer, Null)
	EndMethod
	
	Method InitPipeline()
		' shaders stages
		Local shaderStageCreateInfo:VkPipelineShaderStageCreateInfo[2]
		shaderStageCreateInfo[0] = New VkPipelineShaderStageCreateInfo
		shaderStageCreateInfo[0].sType = VK_STRUCTURE_TYPE_PIPELINE_SHADER_STAGE_CREATE_INFO
		shaderStageCreateInfo[0].pNext = Null
		shaderStageCreateInfo[0].flags = 0
		shaderStageCreateInfo[0].stage = VK_SHADER_STAGE_VERTEX_BIT
		shaderStageCreateInfo[0].module_ = _vertexShader
		shaderStageCreateInfo[0].pName = "main".ToCString()
		shaderStageCreateInfo[0].pSpecializationInfo = Null
		
		shaderStageCreateInfo[1] = New VkPipelineShaderStageCreateInfo
		shaderStageCreateInfo[1].sType = VK_STRUCTURE_TYPE_PIPELINE_SHADER_STAGE_CREATE_INFO
		shaderStageCreateInfo[1].pNext = Null
		shaderStageCreateInfo[1].flags = 0
		shaderStageCreateInfo[1].stage = VK_SHADER_STAGE_FRAGMENT_BIT
		shaderStageCreateInfo[1].module_ = _fragmentShader
		shaderStageCreateInfo[1].pName = "main".ToCString()
		shaderStageCreateInfo[1].pSpecializationInfo = Null

		Local pShaderStages:Byte Ptr = MemAlloc(SizeOf(vkPipelineShaderStageCreateInfo) * shaderStageCreateInfo.length)
		For Local i:UInt = 0 Until 2
			MemCopy(pShaderStages + (SizeOf(VkPipelineShaderStageCreateInfo) * i), shaderStageCreateInfo[i], SizeOf(VkPipelineShaderStageCreateInfo))
		Next
		
		' input vertex binding
		Local vertexBindingDescription:vkVertexInputBindingDescription = New vkVertexInputBindingDescription
		vertexBindingDescription.binding = 0
		vertexBindingDescription.stride = 40 ' 4 floats for pos, 4 floats for color, 2 floats for uv
		vertexBindingDescription.inputRate = VK_VERTEX_INPUT_RATE_VERTEX
		
		Local vertexAttributeDescription:vkVertexInputAttributeDescription[3]
		vertexAttributeDescription[0] = New vkVertexInputAttributeDescription
		vertexAttributeDescription[0].location = 0
		vertexAttributeDescription[0].binding = vertexBindingDescription.binding
		vertexAttributeDescription[0].format = VK_FORMAT_R32G32B32A32_SFLOAT
		vertexAttributeDescription[0].offset = 0
		
		vertexAttributeDescription[1] = New vkVertexInputAttributeDescription
		vertexAttributeDescription[1].location = 1
		vertexAttributeDescription[1].binding = vertexBindingDescription.binding
		vertexAttributeDescription[1].format = VK_FORMAT_R32G32B32A32_SFLOAT
		vertexAttributeDescription[1].offset = 16
		
		vertexAttributeDescription[2] = New vkVertexInputAttributeDescription
		vertexAttributeDescription[2].location = 2
		vertexAttributeDescription[2].binding = vertexBindingDescription.binding
		vertexAttributeDescription[2].format = VK_FORMAT_R32G32_SFLOAT
		vertexAttributeDescription[2].offset = 32

		Local pVertexAttributeDescription:Byte Ptr = MemAlloc(SizeOf(vkVertexInputAttributeDescription) * vertexAttributeDescription.length)
		For Local i:UInt = 0 Until vertexAttributeDescription.length
			MemCopy(pVertexAttributeDescription + (SizeOf(vkVertexInputAttributeDescription) * i), vertexAttributeDescription[i], SizeOf(vkVertexInputAttributeDescription))
		Next

		' vertex input state
		Local vertexInputStateCreateInfo:vkPipelineVertexInputStateCreateInfo = New vkPipelineVertexInputStateCreateInfo
		vertexInputStateCreateInfo.sType = VK_STRUCTURE_TYPE_PIPELINE_VERTEX_INPUT_STATE_CREATE_INFO
		vertexInputStateCreateInfo.pNext = Null
		vertexInputStateCreateInfo.flags = 0
		vertexInputStateCreateInfo.vertexBindingDescriptionCount = 1
		vertexInputStateCreateInfo.pVertexBindingDescriptions = vertexBindingDescription
		vertexInputStateCreateInfo.vertexAttributeDescriptionCount = 3
		vertexInputStateCreateInfo.pVertexAttributeDescriptions = pVertexAttributeDescription
		
		' input assembly state
		Local inputAssemblyStateCreateInfo:vkPipelineInputAssemblyStateCreateInfo = New vkPipelineInputAssemblyStateCreateInfo
		inputAssemblyStateCreateInfo.sType = VK_STRUCTURE_TYPE_PIPELINE_INPUT_ASSEMBLY_STATE_CREATE_INFO
		inputAssemblyStateCreateInfo.pNext = Null
		inputAssemblyStateCreateInfo.flags = 0
		inputAssemblyStateCreateInfo.topology = VK_PRIMITIVE_TOPOLOGY_TRIANGLE_STRIP
		inputAssemblyStateCreateInfo.primitiveRestartEnable = VK_FALSE

		' set up a dynamic state for viewport and scissor		
		Local viewportStateCreateInfo:vkPipelineViewportStateCreateInfo = New vkPipelineViewportStateCreateInfo
		viewportStateCreateInfo.sType = VK_STRUCTURE_TYPE_PIPELINE_VIEWPORT_STATE_CREATE_INFO
		viewportStateCreateInfo.pNext = Null
		viewportStateCreateInfo.flags = 0
		viewportStateCreateInfo.viewportCount = 1
		viewportStateCreateInfo.pViewports = Null
		viewportStateCreateInfo.scissorCount = 1
		viewportStateCreateInfo.pScissors = Null
		
		Local dynamicStates:UInt[2] ' vkDynamicState
		dynamicStates[0] = VK_DYNAMIC_STATE_VIEWPORT
		dynamicStates[1] = VK_DYNAMIC_STATE_SCISSOR
		
		Local dynamicStateCreateInfo:vkPipelineDynamicStateCreateInfo = New vkPipelineDynamicStateCreateInfo
		dynamicStateCreateInfo.sType = VK_STRUCTURE_TYPE_PIPELINE_DYNAMIC_STATE_CREATE_INFO
		dynamicStateCreateInfo.pNext = Null
		dynamicStateCreateInfo.flags = 0
		dynamicStateCreateInfo.dynamicStateCount = dynamicStates.length
		dynamicStateCreateInfo.pDynamicStates = dynamicStates
		
		' rasterizer state
		Local rasterizationStateCreateInfo:vkPipelineRasterizationStateCreateInfo = New vkPipelineRasterizationStateCreateInfo
		rasterizationStateCreateInfo.sType = VK_STRUCTURE_TYPE_PIPELINE_RASTERIZATION_STATE_CREATE_INFO
		rasterizationStateCreateInfo.pNext = Null
		rasterizationStateCreateInfo.flags = 0
		rasterizationStateCreateInfo.depthClampEnable = False
		rasterizationStateCreateInfo.rasterizerDiscardEnable = False
		rasterizationStateCreateInfo.polygonMode = VK_POLYGON_MODE_FILL
		rasterizationStateCreateInfo.cullMode = VK_CULL_MODE_BACK_BIT
		rasterizationStateCreateInfo.frontFace = VK_FRONT_FACE_COUNTER_CLOCKWISE
		rasterizationStateCreateInfo.depthBiasEnable = False
		rasterizationStateCreateInfo.depthBiasConstantFactor = 0.0
		rasterizationStateCreateInfo.depthBiasClamp = 0.0
		rasterizationStateCreateInfo.depthBiasSlopeFactor = 0.0
		rasterizationStateCreateInfo.lineWidth = 1.0
		
		' multisample state
		Local multisampleStateCreateInfo:vkPipelineMultisampleStateCreateInfo = New vkPipelineMultisampleStateCreateInfo
		multisampleStateCreateInfo.sType = VK_STRUCTURE_TYPE_PIPELINE_MULTISAMPLE_STATE_CREATE_INFO
		multisampleStateCreateInfo.pNext = Null
		multisampleStateCreateInfo.flags = 0
		multisampleStateCreateInfo.rasterizationSamples = VK_SAMPLE_COUNT_1_BIT
		multisampleStateCreateInfo.sampleShadingEnable = False
		multisampleStateCreateInfo.minSampleShading = 1.0
		multisampleStateCreateInfo.pSampleMask = Null
		multisampleStateCreateInfo.alphaToCoverageEnable = False
		multisampleStateCreateInfo.alphaToOneEnable = False
		
		' blend attachment state
		Local colorBlendAttachmentState:vkPipelineColorBlendAttachmentState = New vkPipelineColorBlendAttachmentState
		colorBlendAttachmentState.blendEnable = False
		colorBlendAttachmentState.srcColorBlendFactor = VK_BLEND_FACTOR_ONE
		colorBlendAttachmentState.dstColorBlendFactor = VK_BLEND_FACTOR_ZERO
		colorBlendAttachmentState.colorBlendOp = VK_BLEND_OP_ADD
		colorBlendAttachmentState.srcAlphaBlendFactor = VK_BLEND_FACTOR_ONE
		colorBlendAttachmentState.dstAlphaBlendFactor = VK_BLEND_FACTOR_ZERO
		colorBlendAttachmentState.alphaBlendOp = VK_BLEND_OP_ADD
		colorBlendAttachmentState.colorWriteMask = VK_COLOR_COMPONENT_R_BIT | VK_COLOR_COMPONENT_G_BIT | VK_COLOR_COMPONENT_B_BIT | VK_COLOR_COMPONENT_A_BIT
		
		' blend state
		Local colorBlendStateCreateInfo:vkPipelineColorBlendStateCreateInfo = New vkPipelineColorBlendStateCreateInfo
		colorBlendStateCreateInfo.sType = VK_STRUCTURE_TYPE_PIPELINE_COLOR_BLEND_STATE_CREATE_INFO
		colorBlendStateCreateInfo.pNext = Null
		colorBlendStateCreateInfo.flags = 0
		colorBlendStateCreateInfo.logicOpEnable = False
		colorBlendStateCreateInfo.logicOp = VK_LOGIC_OP_COPY
		colorBlendStateCreateInfo.attachmentCount = 1
		colorBlendStateCreateInfo.pAttachments = colorBlendAttachmentState
		colorBlendStateCreateInfo.blendConstants_0 = 0.0
		colorBlendStateCreateInfo.blendConstants_1 = 0.0
		colorBlendStateCreateInfo.blendConstants_2 = 0.0
		colorBlendStateCreateInfo.blendConstants_3 = 0.0
		
		' depth stencil state
		Local depthStencilStateCreateInfo:VkPipelineDepthStencilStateCreateInfo = New VkPipelineDepthStencilStateCreateInfo
		depthStencilStateCreateInfo.sType = VK_STRUCTURE_TYPE_PIPELINE_DEPTH_STENCIL_STATE_CREATE_INFO
		depthStencilStateCreateInfo.pNext = Null
		depthStencilStateCreateInfo.flags = 0
		depthStencilStateCreateInfo.depthTestEnable = VK_TRUE
		depthStencilStateCreateInfo.depthWriteEnable = VK_TRUE
		depthStencilStateCreateInfo.depthCompareOp = VK_COMPARE_OP_LESS_OR_EQUAL
		depthStencilStateCreateInfo.depthBoundsTestEnable = VK_FALSE
		depthStencilStateCreateInfo.front_failOp = VK_STENCIL_OP_KEEP
		depthStencilStateCreateInfo.front_passOp = VK_STENCIL_OP_KEEP
		depthStencilStateCreateInfo.front_depthFailOp = VK_STENCIL_OP_KEEP
		depthStencilStateCreateInfo.front_compareOp = VK_COMPARE_OP_ALWAYS
		depthStencilStateCreateInfo.front_compareMask = 0
		depthStencilStateCreateInfo.front_writeMask = 0
		depthStencilStateCreateInfo.front_reference = 0
		depthStencilStateCreateInfo.back_failOp = VK_STENCIL_OP_KEEP
		depthStencilStateCreateInfo.back_passOp = VK_STENCIL_OP_KEEP
		depthStencilStateCreateInfo.back_depthFailOp = VK_STENCIL_OP_KEEP
		depthStencilStateCreateInfo.back_compareOp = VK_COMPARE_OP_ALWAYS
		depthStencilStateCreateInfo.back_compareMask = 0
		depthStencilStateCreateInfo.back_writeMask = 0
		depthStencilStateCreateInfo.back_reference = 0
		depthStencilStateCreateInfo.minDepthBounds = 0
		depthStencilStateCreateInfo.maxDepthBounds = 0

		' pipeline layout
		Local pipelineLayoutCreateInfo:vkPipelineLayoutCreateInfo = New vkPipelineLayoutCreateInfo
		pipelineLayoutCreateInfo.sType = VK_STRUCTURE_TYPE_PIPELINE_LAYOUT_CREATE_INFO
		pipelineLayoutCreateInfo.pNext = Null
		pipelineLayoutCreateInfo.flags = 0
		pipelineLayoutCreateInfo.setLayoutCount = 1
		pipelineLayoutCreateInfo.pSetLayouts = Varptr _descriptorSetLayout
		pipelineLayoutCreateInfo.pushConstantRangeCount = 0
		pipelineLayoutCreateInfo.pPushConstantRanges = Null
		
		Local res:Int =_vkFuncs.vkCreatePipelineLayout(_logicalDevice, pipelineLayoutCreateInfo, Null, Varptr _pipelineLayout)
		If res <> VK_SUCCESS RuntimeError(" Cannot create pipeline layout")
		
		' the pipeline
		Local pipelineCreateInfo:vkGraphicsPipelineCreateInfo = New vkGraphicsPipelineCreateInfo
		pipelineCreateInfo.sType = VK_STRUCTURE_TYPE_GRAPHICS_PIPELINE_CREATE_INFO
		pipelineCreateInfo.pNext = Null
		pipelineCreateInfo.flags = 0
		pipelineCreateInfo.stageCount = shaderStageCreateInfo.length
		pipelineCreateInfo.pStages = pShaderStages
		pipelineCreateInfo.pVertexInputState = vertexInputStateCreateInfo
		pipelineCreateInfo.pInputAssemblyState = inputAssemblyStateCreateInfo
		pipelineCreateInfo.pTessellationState = Null
		pipelineCreateInfo.pViewportState = viewportStateCreateInfo
		pipelineCreateInfo.pRasterizationState = rasterizationStateCreateInfo
		pipelineCreateInfo.pMultisampleState = multisampleStateCreateInfo
		pipelineCreateInfo.pDepthStencilState = depthStencilStateCreateInfo
		pipelineCreateInfo.pColorBlendState = colorBlendStateCreateInfo
		pipelineCreateInfo.pDynamicState = dynamicStateCreateInfo
		pipelineCreateInfo.layout = _pipelineLayout
		pipelineCreateInfo.renderpass = _renderpass
		pipelineCreateInfo.subpass = 0
		pipelineCreateInfo.basePipelineHandle = Null
		pipelineCreateInfo.basePipelineIndex = -1
		
		res =_vkFuncs.vkCreateGraphicsPipelines(_logicalDevice, Null, 1, pipelineCreateInfo, Null, Varptr _pipeline)
		If res <> VK_SUCCESS RuntimeError(" Cannot create pipeline")
		
		MemFree(pVertexAttributeDescription)
		MemFree(pShaderStages)
		MemFree(shaderStageCreateInfo[0].pName)
		MemFree(shaderStageCreateInfo[1].pName)
	EndMethod
	
	Method InitCommandPool()
		Local commandPoolCreateInfo:vkCommandPoolCreateInfo = New vkCommandPoolCreateInfo
		commandPoolCreateInfo.sType = VK_STRUCTURE_TYPE_COMMAND_POOL_CREATE_INFO
		commandPoolCreateInfo.pNext = Null
		commandPoolCreateInfo.flags = VK_COMMAND_POOL_CREATE_RESET_COMMAND_BUFFER_BIT | VK_COMMAND_POOL_CREATE_TRANSIENT_BIT
		commandPoolCreateInfo.queueFamilyIndex = _queuePresentFamilyIndex
	
		Local res:Int =_vkFuncs.vkCreateCommandPool(_logicalDevice, commandPoolCreateInfo, Null, Varptr _commandPool)
		If res <> VK_SUCCESS RuntimeError(" Cannot create a command pool")
	EndMethod
	
	Method InitCommandBuffers()	
		Local commandBufferAllocateInfo:vkCommandBufferAllocateInfo = New vkCommandBufferAllocateInfo
		commandBufferAllocateInfo.sType = VK_STRUCTURE_TYPE_COMMAND_BUFFER_ALLOCATE_INFO
		commandBufferAllocateInfo.commandPool = _commandPool
		commandBufferAllocateInfo.level = VK_COMMAND_BUFFER_LEVEL_PRIMARY
		commandBufferAllocateInfo.commandBufferCount = 1

		For Local i:Int = 0 Until _renderingResources.length
			Local res:Int =_vkFuncs.vkAllocateCommandBuffers(_logicalDevice, commandBufferAllocateInfo, Varptr _renderingResources[i]._commandBuffer)
			If res <> VK_SUCCESS RuntimeError(" Cannot allocate command buffers")
		Next
	EndMethod
	
	Method InitRenderpass()
		Local pSubpassDependencies:Byte Ptr = MemAlloc(SizeOf(vkSubpassDependency) * 2)
		Local subpassDependencies:vkSubpassDependency[2]
		subpassDependencies[0] = New vkSubpassDependency
		subpassDependencies[0].srcSubpass = VK_SUBPASS_EXTERNAL
		subpassDependencies[0].dstSubpass = 0
		subpassDependencies[0].srcStageMask = VK_PIPELINE_STAGE_BOTTOM_OF_PIPE_BIT
		subpassDependencies[0].dstStageMask = VK_PIPELINE_STAGE_COLOR_ATTACHMENT_OUTPUT_BIT
		subpassDependencies[0].srcAccessMask = VK_ACCESS_MEMORY_READ_BIT
		subpassDependencies[0].dstAccessMask = VK_ACCESS_COLOR_ATTACHMENT_WRITE_BIT
		subpassDependencies[0].dependencyFlags = VK_DEPENDENCY_BY_REGION_BIT

		subpassDependencies[1] = New vkSubpassDependency
		subpassDependencies[1].srcSubpass = 0
		subpassDependencies[1].dstSubpass = VK_SUBPASS_EXTERNAL
		subpassDependencies[1].srcStageMask = VK_PIPELINE_STAGE_COLOR_ATTACHMENT_OUTPUT_BIT
		subpassDependencies[1].dstStageMask = VK_PIPELINE_STAGE_BOTTOM_OF_PIPE_BIT
		subpassDependencies[1].srcAccessMask = VK_ACCESS_COLOR_ATTACHMENT_WRITE_BIT
		subpassDependencies[1].dstAccessMask = VK_ACCESS_MEMORY_READ_BIT
		subpassDependencies[1].dependencyFlags = VK_DEPENDENCY_BY_REGION_BIT

		For Local i:Int = 0 Until subpassDependencies.length
			MemCopy(pSubpassDependencies + (SizeOf(vkSubpassDependency) * i), subpassDependencies[i], SizeOf(vkSubpassDependency))
		Next
		
		' attachment description for the renderpass - color and depth
		Local attachmentDescriptions:vkAttachmentDescription[2]
		attachmentDescriptions[0] = New vkAttachmentDescription
		attachmentDescriptions[0].flags = 0
		attachmentDescriptions[0].format = _swapchainImageFormat
		attachmentDescriptions[0].samples = VK_SAMPLE_COUNT_1_BIT
		attachmentDescriptions[0].loadOp = VK_ATTACHMENT_LOAD_OP_CLEAR
		attachmentDescriptions[0].storeOp = VK_ATTACHMENT_STORE_OP_STORE
		attachmentDescriptions[0].stencilLoadOp = VK_ATTACHMENT_LOAD_OP_DONT_CARE
		attachmentDescriptions[0].stencilStoreOp = VK_ATTACHMENT_STORE_OP_DONT_CARE
		attachmentDescriptions[0].initialLayout = VK_IMAGE_LAYOUT_PRESENT_SRC_KHR
		attachmentDescriptions[0].finalLayout = VK_IMAGE_LAYOUT_PRESENT_SRC_KHR
		
		attachmentDescriptions[1] = New vkAttachmentDescription
		attachmentDescriptions[1].flags = 0
		attachmentDescriptions[1].format = VK_FORMAT_D16_UNORM
		attachmentDescriptions[1].samples = VK_SAMPLE_COUNT_1_BIT
		attachmentDescriptions[1].loadOp = VK_ATTACHMENT_LOAD_OP_CLEAR
		attachmentDescriptions[1].storeOp = VK_ATTACHMENT_STORE_OP_DONT_CARE
		attachmentDescriptions[1].stencilLoadOp = VK_ATTACHMENT_LOAD_OP_DONT_CARE
		attachmentDescriptions[1].stencilStoreOp = VK_ATTACHMENT_STORE_OP_DONT_CARE
		attachmentDescriptions[1].initialLayout = VK_IMAGE_LAYOUT_DEPTH_STENCIL_ATTACHMENT_OPTIMAL
		attachmentDescriptions[1].finalLayout = VK_IMAGE_LAYOUT_DEPTH_STENCIL_ATTACHMENT_OPTIMAL
		
		' make a contiguous array of the attachments
		Local pAttachmentDescriptions:Byte Ptr = MemAlloc(SizeOf(vkAttachmentDescription) * attachmentDescriptions.length)
		For Local i:Int = 0 Until attachmentDescriptions.length
			MemCopy(pAttachmentDescriptions + (SizeOf(vkAttachmentDescription) * i), attachmentDescriptions[i], SizeOf(vkAttachmentDescription))
		Next
		
		Local colorAttachmentReference:vkAttachmentReference = New vkAttachmentReference
		colorAttachmentReference.attachment = 0
		colorAttachmentReference.layout = VK_IMAGE_LAYOUT_COLOR_ATTACHMENT_OPTIMAL
		
		Local depthAttachmentReference:vkAttachmentReference = New vkAttachmentReference
		depthAttachmentReference.attachment = 1
		depthAttachmentReference.layout = VK_IMAGE_LAYOUT_DEPTH_STENCIL_ATTACHMENT_OPTIMAL
		
		' subpass description
		Local subpassDescriptions:vkSubpassDescription = New vkSubpassDescription
		subpassDescriptions.flags = 0
		subpassDescriptions.pipelineBindPoint = VK_PIPELINE_BIND_POINT_GRAPHICS
		subpassDescriptions.inputAttachmentCount = 0
		subpassDescriptions.pInputAttachments = Null
		subpassDescriptions.colorAttachmentCount = 1
		subpassDescriptions.pColorAttachments = colorAttachmentReference
		subpassDescriptions.pResolveAttachments = Null
		subpassDescriptions.pDepthStencilAttachment = depthAttachmentReference
		subpassDescriptions.preserveAttachmentCount = 0
		subpassDescriptions.pPreserveAttachments = Null
		
		' create the renderpass
		Local renderpassCreateInfo:vkRenderPassCreateInfo = New vkRenderPassCreateInfo
		renderpassCreateInfo.sType = VK_STRUCTURE_TYPE_RENDER_PASS_CREATE_INFO
		renderpassCreateInfo.pNext = Null
		renderpassCreateInfo.flags = 0
		renderpassCreateInfo.attachmentCount = 2
		renderpassCreateInfo.pAttachments = pAttachmentDescriptions
		renderpassCreateInfo.subpassCount = 1
		renderpassCreateInfo.pSubpasses = subpassDescriptions
		renderpassCreateInfo.dependencyCount = subpassDependencies.length
		renderpassCreateInfo.pDependencies = pSubpassDependencies

		Local res:Int =_vkFuncs.vkCreateRenderPass(_logicalDevice, renderpassCreateInfo, Null, Varptr _renderpass)
		If res <> VK_SUCCESS RuntimeError " Cannot create the renderpass"
		
		MemFree(pSubpassDependencies)
		MemFree(pAttachmentDescriptions)
	EndMethod
	
	Method CalculateMatrices()
		Local fov:Float = 45.0
		Local nearZ:Float = 0.1
		Local farZ:Float = 1000.0
		Local t:Float = 1.0 / Tan(fov * 0.5)
		Local nf:Float = nearZ - farZ
		Local aspectRatio:Float = Float(_swapchainImageWidth) / Float(_swapchainImageHeight)

		_projectionMatrix = [t/aspectRatio, 0.0, 0.0, 0.0,..
							0.0, t, 0.0, 0.0,..
							0.0, 0.0, (-nearZ-farZ)/nf, (2*nearZ*farZ)/nf,..
							0.0, 0.0, 1.0, 0.0 ]
		
		_viewMatrix = [ 1.0, 0.0, 0.0, 0.0,..
						0.0, 1.0, 0.0, 0.0,..
						0.0, 0.0, 1.0, 5.0,..
						0.0, 0.0, 0.0, 1.0 ]
		
		_modelMatrix = [1.0, 0.0, 0.0, 0.0,..
					 	0.0, 1.0, 0.0, 0.0,..
						0.0, 0.0, 1.0, 0.0,..
						0.0, 0.0, 0.0, 1.0 ]
	EndMethod
	
	Method InitUniformBuffers()
		CalculateMatrices()
		
		Local bufferCreateInfo:vkBufferCreateInfo = New vkBufferCreateInfo
		bufferCreateInfo.sType = VK_STRUCTURE_TYPE_BUFFER_CREATE_INFO
		bufferCreateInfo.pNext = Null
		bufferCreateInfo.flags = 0
		bufferCreateInfo.size = 3 * 16 * 4
		bufferCreateInfo.usage = VK_BUFFER_USAGE_UNIFORM_BUFFER_BIT
		bufferCreateInfo.sharingMode = VK_SHARING_MODE_EXCLUSIVE
		
		' create the buffer
		Local res:Int = _vkFuncs.vkCreateBuffer(_logicalDevice, bufferCreateInfo, Null, Varptr _uniformBuffer)
		If res <> VK_SUCCESS RuntimeError(" Cannot create uniform buffer")
		
		' get the memory bits needed
		Local bufferMemoryRequirements:vkMemoryRequirements = New vkMemoryRequirements
		_vkFuncs.vkGetBufferMemoryRequirements(_logicalDevice, _uniformBuffer, bufferMemoryRequirements)
		
		Local memoryProperties:vkPhysicalDeviceMemoryProperties = New vkPhysicalDeviceMemoryProperties
		_vkFuncs.vkGetPhysicalDeviceMemoryProperties(_physicalDevice, memoryProperties)

		' allocate the correct memory
		For Local i:UInt = 0 Until memoryProperties.memoryTypeCount
			If bufferMemoryRequirements.memoryTypeBits & (1 Shl i)
				Local pMemoryTypePropertyFlags:UInt Ptr = (Varptr memoryProperties.memoryTypes_propertyFlags_0) + (i*2)
				If pMemoryTypePropertyFlags[0] & VK_MEMORY_PROPERTY_HOST_VISIBLE_BIT
					Local memoryAllocateInfo:vkMemoryAllocateInfo = New vkMemoryAllocateInfo
					memoryAllocateInfo.sType = VK_STRUCTURE_TYPE_MEMORY_ALLOCATE_INFO
					memoryAllocateInfo.pNext = Null
					memoryAllocateInfo.allocationSize = bufferMemoryRequirements.size
					memoryAllocateInfo.memoryTypeIndex = i
					
					Local res:Int =_vkFuncs.vkAllocateMemory(_logicalDevice, memoryAllocateInfo, Null, Varptr _uniformBufferMemory)
					If res <> VK_SUCCESS RuntimeError(" Cannot allocate memory for uniform buffer")
					Exit
				EndIf
			EndIf
		Next

		' bind the allocate memory to the uniform buffer
		res = _vkFuncs.vkBindBufferMemory(_logicalDevice, _uniformBuffer, _uniformBufferMemory, 0)
		If res <> VK_SUCCESS RuntimeError(" Cannot bind memory to uniform buffer")
		
		' now map the data across
		Local pMappedMemory:Byte Ptr
		res = _vkFuncs.vkMapMemory(_logicalDevice, _uniformBufferMemory, 0, VK_WHOLE_SIZE, 0, Varptr pMappedMemory)
		If res <> VK_SUCCESS RuntimeError(" Cannot map memory for uniform buffer")
		
		' copy the matrices across
		MemCopy(pMappedMemory + 0, _projectionMatrix, 64)
		MemCopy(pMappedMemory + 64, _viewMatrix, 64)
		MemCopy(pMappedMemory + 128, _modelMatrix, 64)
		
		_vkFuncs.vkUnmapMemory(_logicalDevice, _uniformBufferMemory)
	EndMethod
	
	Method InitTexture(pixmap:TPixmap)	
		Local textureCreateInfo:vkImageCreateInfo = New vkImageCreateInfo
		textureCreateInfo.sType = VK_STRUCTURE_TYPE_IMAGE_CREATE_INFO
		textureCreateInfo.pNext = Null
		textureCreateInfo.flags = 0
		textureCreateInfo.imageType = VK_IMAGE_TYPE_2D
		textureCreateInfo.format = VK_FORMAT_R8G8B8A8_UNORM
		textureCreateInfo.extent_width = pixmap.width
		textureCreateInfo.extent_height = pixmap.height
		textureCreateInfo.extent_depth = 1
		textureCreateInfo.mipLevels = 1
		textureCreateInfo.arrayLayers = 1
		textureCreateInfo.samples = VK_SAMPLE_COUNT_1_BIT
		textureCreateInfo.tiling = VK_IMAGE_TILING_LINEAR
		textureCreateInfo.usage = VK_IMAGE_USAGE_SAMPLED_BIT
		textureCreateInfo.sharingMode = VK_SHARING_MODE_EXCLUSIVE
		textureCreateInfo.queueFamilyIndexCount = 0
		textureCreateInfo.pQueueFamilyIndices = Null
		textureCreateInfo.initialLayout = VK_IMAGE_LAYOUT_PREINITIALIZED

		Local res:Int = _vkFuncs.vkCreateImage(_logicalDevice, textureCreateInfo, Null, Varptr _texture)
		If res <> VK_SUCCESS RuntimeError(" Cannot create texture")

		' get the memory bits needed
		Local bufferMemoryRequirements:vkMemoryRequirements = New vkMemoryRequirements
		_vkFuncs.vkGetImageMemoryRequirements(_logicalDevice, _texture, bufferMemoryRequirements)

		Local memoryProperties:vkPhysicalDeviceMemoryProperties = New vkPhysicalDeviceMemoryProperties
		_vkFuncs.vkGetPhysicalDeviceMemoryProperties(_physicalDevice, memoryProperties)

		' allocate the correct memory
		For Local i:UInt = 0 Until memoryProperties.memoryTypeCount
			If bufferMemoryRequirements.memoryTypeBits & (1 Shl i)
				Local pMemoryTypePropertyFlags:UInt Ptr = (Varptr memoryProperties.memoryTypes_propertyFlags_0) + (i*2)
				If pMemoryTypePropertyFlags[0] & VK_MEMORY_PROPERTY_HOST_VISIBLE_BIT
					Local memoryAllocateInfo:vkMemoryAllocateInfo = New vkMemoryAllocateInfo
					memoryAllocateInfo.sType = VK_STRUCTURE_TYPE_MEMORY_ALLOCATE_INFO
					memoryAllocateInfo.pNext = Null
					memoryAllocateInfo.allocationSize = bufferMemoryRequirements.size
					memoryAllocateInfo.memoryTypeIndex = i

					Local res:Int =_vkFuncs.vkAllocateMemory(_logicalDevice, memoryAllocateInfo, Null, Varptr _textureMemory)
					If res <> VK_SUCCESS RuntimeError(" Cannot allocate memory for texture")
					Exit
				EndIf
			EndIf
		Next

		' bind the allocated memory to the texture
		res = _vkFuncs.vkBindImageMemory(_logicalDevice, _texture, _textureMemory, 0)
		If res <> VK_SUCCESS RuntimeError(" Cannot bind memory to texture")

		' TODO: copy the data across to the gpu device memory via a staging buffer,
		' this code uses host visible memory for the texture and results in a slower performance
		Local pMappedMemory:Byte Ptr
		res = _vkFuncs.vkMapMemory(_logicalDevice, _textureMemory, 0, VK_WHOLE_SIZE, 0, Varptr pMappedMemory)
		If res <> VK_SUCCESS RuntimeError(" Cannnot map memory for texture")

		' if the capacities are the same then blast the data across
		If pixmap.capacity = bufferMemoryRequirements.size
			MemCopy(pMappedMemory, pixmap.pixels, pixmap.capacity)
		Else
			' otherwise we need to honor alignment
			Local pTemp:Byte Ptr = pMappedMemory
			Local strideTexture:Int = bufferMemoryRequirements.size / pixmap.height
			Local stridePixmap:Int = pixmap.capacity / pixmap.height
			For Local i:Int = 0 Until pixmap.height
				MemCopy(pTemp + (strideTexture * i), pixmap.pixels + stridePixmap * i, stridePixmap)
			Next
		EndIf

		Local memoryRange:vkMappedMemoryRange = New vkMappedMemoryRange
		memoryRange.sType = VK_STRUCTURE_TYPE_MAPPED_MEMORY_RANGE
		memoryRange.pNext = Null
		memoryRange.memory = _textureMemory
		memoryRange.offset = 0
		memoryRange.size = VK_WHOLE_SIZE
		_vkFuncs.vkFlushMappedMemoryRanges(_logicalDevice, 1, memoryRange)
		_vkFuncs.vkUnmapMemory(_logicalDevice, _textureMemory)

		' put the texture into the state that the shader can read it
		Local beginInfo:vkCommandBufferBeginInfo = New vkCommandBufferBeginInfo
		beginInfo.sType = VK_STRUCTURE_TYPE_COMMAND_BUFFER_BEGIN_INFO
		beginInfo.pNext = Null
		beginInfo.flags = VK_COMMAND_BUFFER_USAGE_ONE_TIME_SUBMIT_BIT
		_vkFuncs.vkBeginCommandBuffer(_renderingResources[0]._commandBuffer, beginInfo)

		Local imageMemoryBarrier:vkImageMemoryBarrier = New vkImageMemoryBarrier
		imageMemoryBarrier.sType = VK_STRUCTURE_TYPE_IMAGE_MEMORY_BARRIER
		imageMemoryBarrier.pNext = Null
		imageMemoryBarrier.srcAccessMask = VK_ACCESS_HOST_WRITE_BIT
		imageMemoryBarrier.dstAccessMask = VK_ACCESS_SHADER_READ_BIT
		imageMemoryBarrier.oldLayout = VK_IMAGE_LAYOUT_PREINITIALIZED
		imageMemoryBarrier.newLayout = VK_IMAGE_LAYOUT_SHADER_READ_ONLY_OPTIMAL
		imageMemoryBarrier.srcQueueFamilyIndex = VK_QUEUE_FAMILY_IGNORED
		imageMemoryBarrier.dstQueueFamilyIndex = VK_QUEUE_FAMILY_IGNORED
		imageMemoryBarrier.image = _texture
		imageMemoryBarrier.subresourceRange_aspectMask = VK_IMAGE_ASPECT_COLOR_BIT
		imageMemoryBarrier.subresourceRange_baseMipLevel = 0
		imageMemoryBarrier.subresourceRange_levelCount = 1
		imageMemoryBarrier.subresourceRange_baseArrayLayer = 0
		imageMemoryBarrier.subresourceRange_layerCount = 1

		_vkFuncs.vkCmdPipelineBarrier(_renderingResources[0]._commandBuffer,..
							  VK_PIPELINE_STAGE_TOP_OF_PIPE_BIT,..
							  VK_PIPELINE_STAGE_FRAGMENT_SHADER_BIT,..
							  0,..
							  0, Null,..
							  0, Null,..
							  1, imageMemoryBarrier)
							
		_vkFuncs.vkEndCommandBuffer(_renderingResources[0]._commandBuffer)
		
		Local waitDstStageMask:UInt = VK_PIPELINE_STAGE_TRANSFER_BIT
		Local submitInfo:vkSubmitInfo = New vkSubmitInfo
		submitInfo.sType = VK_STRUCTURE_TYPE_SUBMIT_INFO
		submitInfo.pNext = Null
		submitInfo.waitSemaphoreCount = 0
		submitInfo.pWaitSemaphores = Null
		submitInfo.pWaitDstStageMask = Varptr waitDstStageMask
		submitInfo.commandBufferCount = 1
		submitInfo.pCommandBuffers = Varptr _renderingResources[0]._commandBuffer
		submitInfo.signalSemaphoreCount = 0
		submitInfo.pSignalSemaphores = 0

		' send the work to be done
		_vkFuncs.vkResetFences(_logicalDevice, 1, Varptr _renderingResources[0]._fence)
		res =_vkFuncs.vkQueueSubmit(_queueGraphics, 1, submitInfo, _renderingResources[0]._fence)
		If res <> VK_SUCCESS RuntimeError(" vkQueueSubmit failed")

		' wait for the work to finish
		_vkFuncs.vkWaitForFences(_logicalDevice, 1, Varptr _renderingResources[0]._fence, VK_TRUE, ULong(-1))
		
		' create the texture image view
		Local imageViewCreateInfo:vkImageViewCreateInfo = New vkImageViewCreateInfo
		imageViewCreateInfo.sType = VK_STRUCTURE_TYPE_IMAGE_VIEW_CREATE_INFO
		imageViewCreateInfo.pNext = Null
		imageViewCreateInfo.flags = 0
		imageViewCreateInfo.image = _texture
		imageViewCreateInfo.viewType = VK_IMAGE_VIEW_TYPE_2D
		imageViewCreateInfo.format = VK_FORMAT_R8G8B8A8_UNORM
		imageViewCreateInfo.components_r = VK_COMPONENT_SWIZZLE_R
		imageViewCreateInfo.components_g = VK_COMPONENT_SWIZZLE_G
		imageViewCreateInfo.components_b = VK_COMPONENT_SWIZZLE_B
		imageViewCreateInfo.components_a = VK_COMPONENT_SWIZZLE_A
		imageViewCreateInfo.subresourceRange_aspectMask = VK_IMAGE_ASPECT_COLOR_BIT
		imageViewCreateInfo.subresourceRange_baseMipLevel = 0
		imageViewCreateInfo.subresourceRange_levelCount = 1
		imageViewCreateInfo.subresourceRange_baseArrayLayer = 0
		imageViewCreateInfo.subresourceRange_layerCount = 1
		
		res = _vkFuncs.vkCreateImageView(_logicalDevice, imageViewCreateInfo, Null, Varptr _textureView)
		If res <> VK_SUCCESS RuntimeError(" Cannot create texure image view")
	EndMethod
	
	Method InitSampler()
		Local samplerCreateInfo:vkSamplerCreateInfo = New vkSamplerCreateInfo
		samplerCreateInfo.sType = VK_STRUCTURE_TYPE_SAMPLER_CREATE_INFO
		samplerCreateInfo.pNext = Null
		samplerCreateInfo.flags = 0
		samplerCreateInfo.magFilter = VK_FILTER_LINEAR
		samplerCreateInfo.minFilter = VK_FILTER_LINEAR
		samplerCreateInfo.mipmapMode = VK_SAMPLER_MIPMAP_MODE_LINEAR
		samplerCreateInfo.addressModeU = VK_SAMPLER_ADDRESS_MODE_CLAMP_TO_EDGE
		samplerCreateInfo.addressModeV = VK_SAMPLER_ADDRESS_MODE_CLAMP_TO_EDGE
		samplerCreateInfo.addressModeW = VK_SAMPLER_ADDRESS_MODE_CLAMP_TO_EDGE
		samplerCreateInfo.mipLodBias = 0
		samplerCreateInfo.anisotropyEnable = VK_FALSE
		samplerCreateInfo.minLod = 0
		samplerCreateInfo.maxLod = 5
		samplerCreateInfo.borderColor = VK_BORDER_COLOR_FLOAT_TRANSPARENT_BLACK
		samplerCreateInfo.unnormalizedCoordinates = VK_FALSE
		
		Local res:Int = _vkFuncs.vkCreateSampler(_logicalDevice, samplerCreateInfo, Null, Varptr _sampler)
		If res <> VK_SUCCESS RuntimeError(" Cannot create texture sampler")
	EndMethod
	
	Method InitDescriptorSets()
		Local descriptorSetLayoutBinding:vkDescriptorSetLayoutBinding[2]
		
		' binding for the matrix data in the vertex shader
		descriptorSetLayoutBinding[0] = New vkDescriptorSetLayoutBinding
		descriptorSetLayoutBinding[0].binding = 0
		descriptorSetLayoutBinding[0].descriptorType = VK_DESCRIPTOR_TYPE_UNIFORM_BUFFER
		descriptorSetLayoutBinding[0].descriptorCount = 1
		descriptorSetLayoutBinding[0].stageFlags = VK_SHADER_STAGE_VERTEX_BIT
		descriptorSetLayoutBinding[0].pImmutableSamplers = Null
		
		' binding for the texture in the fragment shader
		descriptorSetLayoutBinding[1] = New vkDescriptorSetLayoutBinding
		descriptorSetLayoutBinding[1].binding = 1
		descriptorSetLayoutBinding[1].descriptorType = VK_DESCRIPTOR_TYPE_COMBINED_IMAGE_SAMPLER
		descriptorSetLayoutBinding[1].descriptorCount = 1
		descriptorSetLayoutBinding[1].stageFlags = VK_SHADER_STAGE_FRAGMENT_BIT
		descriptorSetLayoutBinding[1].pImmutableSamplers = Null

		' create a contiguous array
		Local pBindings:Byte Ptr = MemAlloc(SizeOf(vkDescriptorSetLayoutBinding) * descriptorSetLayoutBinding.length)
		For Local i:Int = 0 Until descriptorSetLayoutBinding.length
			MemCopy(pBindings + (SizeOf(vkDescriptorSetLayoutBinding) * i), descriptorSetLayoutBinding[i], SizeOf(vkDescriptorSetLayoutBinding))
		Next
		
		Local descriptorSetLayoutCreateInfo:vkDescriptorSetLayoutCreateInfo = New vkDescriptorSetLayoutCreateInfo
		descriptorSetLayoutCreateInfo.sType = VK_STRUCTURE_TYPE_DESCRIPTOR_SET_LAYOUT_CREATE_INFO
		descriptorSetLayoutCreateInfo.pNext = Null
		descriptorSetLayoutCreateInfo.flags = 0
		descriptorSetLayoutCreateInfo.bindingCount = 2
		descriptorSetLayoutCreateInfo.pBindings = pBindings

		Local res:Int = _vkFuncs.vkCreateDescriptorSetLayout(_logicalDevice, descriptorSetLayoutCreateInfo, Null, Varptr _descriptorSetLayout)
		If res <> VK_SUCCESS RuntimeError(" Cannot create the descriptor set layout")
		
		' one for the matrices and one for the texture/sampler
		Local descriptorPoolSize:vkDescriptorPoolSize[2]
		descriptorPoolSize[0] = New vkDescriptorPoolSize
		descriptorPoolSize[0].type_ = VK_DESCRIPTOR_TYPE_UNIFORM_BUFFER
		descriptorPoolSize[0].descriptorCount = 1
		descriptorPoolSize[1] = New vkDescriptorPoolSize
		descriptorPoolSize[1].type_ = VK_DESCRIPTOR_TYPE_COMBINED_IMAGE_SAMPLER
		descriptorPoolSize[1].descriptorCount = 1
		
		' create a contiguous array
		Local pPoolSize:Byte Ptr = MemAlloc(SizeOf(vkDescriptorPoolSize) * descriptorPoolSize.length)
		For Local i:Int = 0 Until descriptorPoolSize.length
			MemCopy(pPoolSize + (SizeOf(vkDescriptorPoolSize) * i), descriptorPoolSize[i], SizeOf(vkDescriptorPoolSize))
		Next

		Local descriptorPoolCreateInfo:vkDescriptorPoolCreateInfo = New vkDescriptorPoolCreateInfo
		descriptorPoolCreateInfo.sType = VK_STRUCTURE_TYPE_DESCRIPTOR_POOL_CREATE_INFO
		descriptorPoolCreateInfo.pNext = Null
		descriptorPoolCreateInfo.flags = 0
		descriptorPoolCreateInfo.maxSets = 1
		descriptorPoolCreateInfo.poolSizeCount = descriptorPoolSize.length
		descriptorPoolCreateInfo.pPoolSizes = pPoolSize

		res = _vkFuncs.vkCreateDescriptorPool(_logicalDevice, descriptorPoolCreateInfo, Null, Varptr _descriptorPool)
		If res <> VK_SUCCESS RuntimeError(" Cannot create descriptor pool")
		
		Local descriptorSetAllocateInfo:vkDescriptorSetAllocateInfo = New vkDescriptorSetAllocateInfo
		descriptorSetAllocateInfo.sType = VK_STRUCTURE_TYPE_DESCRIPTOR_SET_ALLOCATE_INFO
		descriptorSetAllocateInfo.pNext = Null
		descriptorSetAllocateInfo.descriptorPool = _descriptorPool
		descriptorSetAllocateInfo.descriptorSetCount = 1
		descriptorSetAllocateInfo.pSetLayouts = Varptr _descriptorSetLayout

		res = _vkFuncs.vkAllocateDescriptorSets(_logicalDevice, descriptorSetAllocateInfo, Varptr _descriptorSet)
		If res <> VK_SUCCESS RuntimeError(" Cannot allocate descriptor set")

		Local descriptorBufferInfo:vkDescriptorBufferInfo = New vkDescriptorBufferInfo
		descriptorBufferInfo.buffer = _uniformBuffer
		descriptorBufferInfo.offset = 0
		descriptorBufferInfo.range = VK_WHOLE_SIZE
		
		Local descriptorImageInfo:vkDescriptorImageInfo = New vkDescriptorImageInfo
		descriptorImageInfo.sampler = _sampler
		descriptorImageInfo.imageView = _textureView
		descriptorImageInfo.imageLayout = VK_IMAGE_LAYOUT_PREINITIALIZED

		Local writeDescriptorSets:vkWriteDescriptorSet[2]
		writeDescriptorSets[0] = New vkWriteDescriptorSet
		writeDescriptorSets[0].sType = VK_STRUCTURE_TYPE_WRITE_DESCRIPTOR_SET
		writeDescriptorSets[0].pNext = Null
		writeDescriptorSets[0].dstSet = _descriptorSet
		writeDescriptorSets[0].dstBinding = 0
		writeDescriptorSets[0].dstArrayElement = 0
		writeDescriptorSets[0].descriptorCount = 1		
		writeDescriptorSets[0].descriptorType = VK_DESCRIPTOR_TYPE_UNIFORM_BUFFER
		writeDescriptorSets[0].pImageInfo = Null
		writeDescriptorSets[0].pBufferInfo = descriptorBufferInfo
		writeDescriptorSets[0].pTexelBufferView = Null
		
		writeDescriptorSets[1] = New vkWriteDescriptorSet
		writeDescriptorSets[1].sType = VK_STRUCTURE_TYPE_WRITE_DESCRIPTOR_SET
		writeDescriptorSets[1].pNext = Null
		writeDescriptorSets[1].dstSet = _descriptorSet
		writeDescriptorSets[1].dstBinding = 1
		writeDescriptorSets[1].dstArrayElement = 0
		writeDescriptorSets[1].descriptorCount = 1	
		writeDescriptorSets[1].descriptorType = VK_DESCRIPTOR_TYPE_COMBINED_IMAGE_SAMPLER
		writeDescriptorSets[1].pImageInfo = descriptorImageInfo
		writeDescriptorSets[1].pBufferInfo = Null
		writeDescriptorSets[1].pTexelBufferView = Null
		
		Local pWriteDescriptorSets:Byte Ptr = MemAlloc(SizeOf(vkWriteDescriptorSet) * writeDescriptorSets.length)
		For Local i:Int = 0 Until writeDescriptorSets.length
			MemCopy(pWriteDescriptorSets + (SizeOf(vkWriteDescriptorSet) * i), writeDescriptorSets[i], SizeOf(vkWriteDescriptorSet))
		Next
		
		_vkFuncs.vkUpdateDescriptorSets(_logicalDevice, 2, pWriteDescriptorSets, 0, Null)

		' cleanup the temp contiguous arrays used above
		MemFree(pWriteDescriptorSets)
		MemFree(pBindings)
		MemFree(pPoolSize)
	EndMethod

	Method Render()
		' get the current rendering resource
		Global resourceIndex:UInt
		Local renderingResource:VulkanRenderingResource = _renderingResources[resourceIndex]
		resourceIndex = (resourceIndex + 1) Mod _renderingResources.length	

		Local res:Int =_vkFuncs.vkWaitForFences(_logicalDevice, 1, Varptr renderingResource._fence, VK_FALSE, ULong(-1))
		If res <> VK_SUCCESS DebugStop
				
		_vkFuncs.vkResetFences(_logicalDevice, 1, Varptr renderingResource._fence)
			
		Local imageIndex:UInt
		res =_vkFuncs.vkAcquireNextImageKHR(_logicalDevice, _swapchain, 100000000, renderingResource._semaphoreImageAvailable, Null, Varptr imageIndex)
		If res <> VK_SUCCESS RuntimeError(" vkAcquireNextImageKHR failed")

		' update the shader uniforms - move the rectangle back and forth
		Global ang:Int
		ang = (ang + 2) Mod 360
		_viewMatrix[7] = Sin(ang) * 0.6
		_viewMatrix[3] = Cos(ang) * 0.3
		
		Local pMapped:Byte Ptr
		_vkFuncs.vkMapMemory(_logicalDevice, _uniformBufferMemory, 0, VK_WHOLE_SIZE, 0, Varptr pMapped)
		MemCopy(pMapped + 0, _projectionMatrix, 64)
		MemCopy(pMapped + 64, _viewMatrix, 64)
		MemCopy(pMapped + 128, _modelMatrix, 64)
		
		Local memoryRange:vkMappedMemoryRange = New vkMappedMemoryRange
		memoryRange.sType = VK_STRUCTURE_TYPE_MAPPED_MEMORY_RANGE
		memoryRange.pNext = 0
		memoryRange.memory = _uniformBufferMemory
		memoryRange.offset = 0
		memoryRange.size = VK_WHOLE_SIZE
		_vkFuncs.vkFlushMappedMemoryRanges(_logicalDevice, 1, memoryRange)
		_vkFuncs.vkUnmapMemory(_logicalDevice, _uniformBufferMemory)

		Local commandBufferBeginInfo:vkCommandBufferBeginInfo = New vkCommandBufferBeginInfo
		commandBufferBeginInfo.sType = VK_STRUCTURE_TYPE_COMMAND_BUFFER_BEGIN_INFO
		commandBufferBeginInfo.pNext = Null
		commandBufferBeginInfo.flags = VK_COMMAND_BUFFER_USAGE_ONE_TIME_SUBMIT_BIT
		commandBufferBeginInfo.pInheritanceInfo = Null

		_vkFuncs.vkBeginCommandBuffer(renderingResource._commandBuffer, commandBufferBeginInfo)
		Local clearValue:Float[] = [0.2, 0.4, 0.8, 0.0,    1.0, 0.0]
		
		Local renderpassBeginInfo:vkRenderpassBeginInfo = New vkRenderpassBeginInfo
		renderpassBeginInfo.sType = VK_STRUCTURE_TYPE_RENDER_PASS_BEGIN_INFO
		renderpassBeginInfo.pNext = Null
		renderpassBeginInfo.renderpass = _renderpass
		renderpassBeginInfo.framebuffer = renderingResource._framebuffer
		renderpassBeginInfo.renderArea_offset_x = 0
		renderpassBeginInfo.renderArea_offset_y = 0
		renderpassBeginInfo.renderArea_extent_width = _swapchainImageWidth
		renderpassBeginInfo.renderArea_extent_height = _swapchainImageHeight
		renderpassBeginInfo.clearValueCount = 2
		renderpassBeginInfo.pClearValues = clearValue

		_vkFuncs.vkCmdBeginRenderPass(renderingResource._commandBuffer, renderpassBeginInfo, VK_SUBPASS_CONTENTS_INLINE)
		_vkFuncs.vkCmdBindPipeline(renderingResource._commandBuffer, VK_PIPELINE_BIND_POINT_GRAPHICS, _pipeline)

		Local viewport:vkViewport = New vkViewport
		viewport.x = 0.0
		viewport.y = 0.0
		viewport.width = _swapchainImageWidth
		viewport.height = _swapchainImageHeight
		viewport.minDepth = 0.0
		viewport.maxDepth = 1.0
		_vkFuncs.vkCmdSetViewport(renderingResource._commandBuffer, 0, 1, viewport)

		Local scissor:vkRect2D = New vkRect2D
		scissor.offset_x = 0
		scissor.offset_y = 0
		scissor.extent_width = _swapchainImageWidth
		scissor.extent_height = _swapchainImageHeight
		_vkFuncs.vkCmdSetScissor(renderingResource._commandBuffer, 0, 1, scissor)

		_vkFuncs.vkCmdBindDescriptorSets(renderingResource._commandBuffer, VK_PIPELINE_BIND_POINT_GRAPHICS, _pipelineLayout, 0, 1, Varptr _descriptorSet, 0, Null)

		' bind the vertex buffer and draw
		Local offset:ULong = 0
		_vkFuncs.vkCmdBindVertexBuffers(renderingResource._commandBuffer, 0, 1, Varptr _vertexBuffer, Varptr offset)
		_vkFuncs.vkCmdDraw(renderingResource._commandBuffer, 4, 1, 0, 0)
		
		
		_vkFuncs.vkCmdEndRenderPass(renderingResource._commandBuffer)

		res =_vkFuncs.vkEndCommandBuffer(renderingResource._commandBuffer)
		If res <> VK_SUCCESS DebugStop
		
		Local waitDstStageMask:UInt = VK_PIPELINE_STAGE_TRANSFER_BIT
		Local submitInfo:vkSubmitInfo = New vkSubmitInfo
		submitInfo.sType = VK_STRUCTURE_TYPE_SUBMIT_INFO
		submitInfo.pNext = Null
		submitInfo.waitSemaphoreCount = 1
		submitInfo.pWaitSemaphores = Varptr renderingResource._semaphoreImageAvailable
		submitInfo.pWaitDstStageMask = Varptr waitDstStageMask
		submitInfo.commandBufferCount = 1
		submitInfo.pCommandBuffers = Varptr renderingResource._commandBuffer
		submitInfo.signalSemaphoreCount = 1
		submitInfo.pSignalSemaphores = Varptr renderingResource._semaphoreRenderingFinished

		res =_vkFuncs.vkQueueSubmit(_queueGraphics, 1, submitInfo, renderingResource._fence)
		If res <> VK_SUCCESS RuntimeError(" vkQueueSubmit failed")

		Local presentInfo:vkPresentInfoKHR = New vkPresentInfoKHR
		presentInfo.sType = VK_STRUCTURE_TYPE_PRESENT_INFO_KHR
		presentInfo.pNext = Null
		presentInfo.waitSemaphoreCount = 1
		presentInfo.pWaitSemaphores = Varptr renderingResource._semaphoreRenderingFinished
		presentInfo.swapchainCount = 1
		presentInfo.pSwapchains = Varptr _swapchain
		presentInfo.pImageIndices = Varptr imageIndex
		presentInfo.pResults = Null

		' present the swapchain image to the presentation engine
		res =_vkFuncs.vkQueuePresentKHR(_queueGraphics, presentInfo)
		If res <> VK_SUCCESS DebugStop
	EndMethod

	Method Close()
		' before we start tearing things down make sure the device isn't busy
		_vkFuncs.vkDeviceWaitIdle(_logicalDevice)
		
		' free the command buffers
		Print "Freeing up the command buffers"
		For Local i:Int = 0 Until _renderingResources.length
		_vkFuncs.vkFreeCommandBuffers(_logicalDevice, _commandPool, 1, Varptr _renderingResources[i]._commandBuffer)
		Next
		
		' free the depth stencil memories
		Print "Freeing up the depth stencil memory"
		For Local i:Int = 0 Until _depthImageMemory.length
			_vkFuncs.vkFreeMemory(_logicalDevice, _depthImageMemory[i], Null)
		Next
		
		' free the vertex buffer memory
		Print "Freeing up the vertex buffer memory"
		_vkFuncs.vkFreeMemory(_logicalDevice, _vertexBufferMemory, Null)
		
		' free the uniform buffer memory
		Print "Freeing up the uniform buffer memory"
		_vkFuncs.vkFreeMemory(_logicalDevice, _uniformBufferMemory, Null)

		' free the texture memory
		Print "Freeing up the texture memory"
		_vkFuncs.vkFreeMemory(_logicalDevice, _textureMemory, Null)		
		
		' destroy the depth images
		Print "Destroying the depth stencil image view"
		For Local i:Int = 0 Until _depthImageView.length
			_vkFuncs.vkDestroyImageView(_logicalDevice, _depthImageView[i], Null)
		Next
		
		' destroy the depth images
		Print "Destroying the depth image"
		For Local i:Int = 0 Until _depthImage.length
			_vkFuncs.vkDestroyImage(_logicalDevice, _depthImage[i], Null)
		Next
		
		' destroy the descriptor layout set
		Print "Destroying the descriptor layout set"
		_vkfuncs.vkDestroyDescriptorSetLayout(_logicalDevice, _descriptorSetLayout, Null)
		
		' destroy the descriptor pool
		Print "Destroying the descriptor pool"
		_vkFuncs.vkDestroyDescriptorPool(_logicalDevice, _descriptorPool, Null)

		' destroy the vertex buffer
		Print "Destroying the vertex buffer"
		_vkFuncs.vkDestroyBuffer(_logicalDevice, _vertexbuffer, Null)
		
		' destroy the uniform buffer
		Print "Destroying the uniform buffer"
		_vkFuncs.vkDestroyBuffer(_logicalDevice, _uniformbuffer, Null)		
		
		' destory the image view
		Print "Destroying the texture view"
		_vkFuncs.vkDestroyImageView(_logicalDevice, _textureView, Null)
		
		' destroy the texture
		Print "Destroying the texture"
		_vkFuncs.vkDestroyImage(_logicalDevice, _texture, Null)
		
		' destroy the texture sampler
		Print "Destroying the texture sampler"
		_vkFuncs.vkDestroySampler(_logicalDevice, _sampler, Null)
		
		' destroy the fences
		Print "Destroying the fences"
		For Local i:Int = 0 Until _renderingResources.length
		_vkFuncs.vkDestroyFence(_logicalDevice, _renderingResources[i]._fence, Null)
		Next
		
		' destroy the framebuffers
		Print "Destroying the framebuffers"
		For Local i:Int = 0 Until _renderingResources.length
		_vkFuncs.vkDestroyFramebuffer(_logicalDevice, _renderingResources[i]._framebuffer, Null)
		Next
		
		' destroy the swapchain image views
		Print "Destroying the swapchain image views"
		For Local i:Int = 0 Until _swapchainImageViews.length
		_vkFuncs.vkDestroyImageView(_logicalDevice, _swapchainImageViews[i], Null)
		Next
		
		' destroy the pipeline layout
		Print "Destroying the pipeline layout"
		_vkFuncs.vkDestroyPipelineLayout(_logicalDevice, _pipelineLayout, Null)
		
		' destroy the pipeline
		Print "Destroying the pipeline"
		_vkFuncs.vkDestroyPipeline(_logicalDevice, _pipeline, Null)
		
		' destroy the shaders
		Print "Destroying the shaders"
		_vkFuncs.vkDestroyShaderModule(_logicalDevice, _vertexShader, Null)
		_vkFuncs.vkDestroyShaderModule(_logicalDevice, _fragmentShader, Null)
		
		' destroy the command pool
		Print "Destroying the command pool"
		_vkFuncs.vkDestroyCommandPool(_logicalDevice, _commandPool, Null)
		
		' destroy the swapchain
		Print "Destroying the swapchain"
		_vkFuncs.vkDestroySwapchainKHR(_logicalDevice, _swapchain, Null)
		
		' destroy the semaphores
		Print "Destroying the semaphores"
		For Local i:Int = 0 Until _renderingResources.length
		_vkFuncs.vkDestroySemaphore(_logicalDevice, _renderingResources[i]._semaphoreImageAvailable, Null)
		_vkFuncs.vkDestroySemaphore(_logicalDevice, _renderingResources[i]._semaphoreRenderingFinished, Null)
		Next
		
		' destroy the renderpass
		Print "Destroying the renderpass"
		_vkFuncs.vkDestroyRenderpass(_logicalDevice, _renderpass, Null)
		
		' destroy the surface
		Print "Destroying the surface"
		_vkFuncs.vkDestroySurfaceKHR(_instance, _surface, Null)
		
		' destroy the logical device
		Print "Destroying vulkan device"
		_vkFuncs.vkDestroyDevice(_logicalDevice, Null)
		
		' destroy vulkan instance
		Print "Destroying vulkan instance"
		_vkFuncs.vkDestroyInstance(_instance, Null)
		
		' finally close the window
		destroyWindow(_hwnd)
	EndMethod
EndType

' texture that we'll use
Local pixmap:TPixmap = LoadPixmap("BlitzmaxLogo.png")
If pixmap.format <> PF_RGBA8888	pixmap = ConvertPixmap(pixmap, PF_RGBA8888)

Local context:VulkanContext = New VulkanContext
context.InitLibrary()
context.InitInstance()
context.InitDevice()
context.InitWin32Window()
context.InitSurface()
context.InitSwapchain()
context.InitRenderingResources()
context.InitFences()
context.InitSemaphores()
context.InitCommandPool()
context.InitCommandBuffers()
context.InitDepthStencil()
context.InitVertexBuffer()
context.InitRenderpass()
context.InitFramebuffers()
context.InitShaders()
context.InitTexture(pixmap)
context.InitSampler()
context.InitUniformBuffers()
context.InitDescriptorSets()
context.InitPipeline()

EnablePolledInput()

' main loop
While Not KeyDown(KEY_ESCAPE)
	context.Render()
Wend
context.Close()





