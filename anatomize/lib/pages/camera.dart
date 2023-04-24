import 'package:flutter/material.dart';
import 'package:camera/camera.dart';

class CameraCaptureScreen extends StatefulWidget {
  @override
  _CameraCaptureScreenState createState() => _CameraCaptureScreenState();
}

class _CameraCaptureScreenState extends State<CameraCaptureScreen> {
  List<CameraDescription> cameras = [];

 late CameraController _cameraController;

  @override
  void initState() {
    super.initState();
    // Initialize the camera controller
    _initializeCameraController();
  }

  Future<void> _initializeCameraController() async {
    cameras = await availableCameras();
    if (cameras.length > 0) {
      final CameraController controller = CameraController(
        cameras[0],
        ResolutionPreset.medium,
      );
      await controller.initialize();
      if (!mounted) {
        return;
      }
      setState(() {
        _cameraController = controller;
      });
    }
  }

  @override
  void dispose() {
    _cameraController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _cameraController == null
          ? Container() // Show an empty container if camera controller is not yet initialized
          : AspectRatio(
              aspectRatio: _cameraController.value.aspectRatio,
              child: CameraPreview(_cameraController),
            ),
      floatingActionButton: FloatingActionButton(
        onPressed: _capturePicture,
        child: Icon(Icons.camera),
      ),
    );
  }

  void _capturePicture() async {
    try {
      // Check if the camera controller is initialized
      if (_cameraController != null && _cameraController.value.isInitialized) {
        final XFile pictureFile = await _cameraController.takePicture();
        // Use the pictureFile.path to access the captured picture file
        // You can then display, save, or process the picture as needed
      }
    } catch (e) {
      print('Error capturing picture: $e');
    }
  }
}
