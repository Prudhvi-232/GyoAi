import cv2
import mediapipe as mp
import time
import math

class poseDetector():
    def __init__(self):
        self.mpPose = mp.solutions.pose
        self.pose = self.mpPose.Pose(static_image_mode=False,
                                      model_complexity=0,
                                      smooth_landmarks=True,
                                      enable_segmentation=False,
                                      smooth_segmentation=True,
                                      min_detection_confidence=0.5,
                                      min_tracking_confidence=0.5)
        self.mpDraw = mp.solutions.drawing_utils

