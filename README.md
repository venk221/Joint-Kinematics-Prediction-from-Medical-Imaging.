# Joint Kinematics Prediction from Medical Imaging

This project aims to develop a framework for predicting knee joint kinematics based on input MRI data. The primary goals are to segment and analyze MRI scans, automatically identify key anatomical landmarks, define principal axes for the femur and tibia bones, and ultimately build a predictive model for joint motion.

## Overview

Accurate modeling of joint kinematics is crucial for applications such as prosthetics, robotics, and exoskeletons. Traditional approaches often simplify the joint mechanics, leading to suboptimal performance and restricted mobility. By leveraging medical imaging data and advanced computational techniques, this project seeks to create a more realistic and patient-specific model of knee joint kinematics.

## Project Goals

1. **Segment and Analyze MRI Data**: Process and segment MRI scans to extract the 3D geometry of the femur and tibia bones.
2. **Identify Anatomical Landmarks**: Develop a deep learning algorithm to automatically detect key anatomical landmarks on the segmented bone surfaces.
3. **Define Principal Axes**: Utilize Principal Component Analysis (PCA) to determine the principal axes of the femur and tibia segments, providing a consistent coordinate frame for kinematic analysis.
4. **Develop Predictive Model**: Create a predictive model that can estimate the relative motion and joint kinematics based on the identified landmarks and principal axes, using input MRI data.

## Methodology

1. **MRI Data Collection and Segmentation**: Acquire MRI scans of the knee joint at various angles of flexion. Segment the femur and tibia bones from the raw DICOM data using 3D Slicer software, exporting the results as STL files.
2. **Landmark Identification**: Implement a machine learning algorithm to automatically detect key landmarks on the segmented bone surfaces, such as the lateral intercondylar tubercle for the tibia and the lateral distal point for the femur.
3. **Principal Component Analysis (PCA)**: Apply PCA to the point cloud data of each bone segment to determine the principal axes, defining a consistent coordinate frame for kinematic analysis.
4. **Model Development**: Combine the identified landmarks and principal axes to build a predictive model for joint kinematics, enabling estimation of relative motion between the femur and tibia based on input MRI data.

## Results

The project successfully accomplished the following:

- Collected and segmented MRI data for the knee joint at various angles of flexion.
- Developed an algorithm for automatic landmark identification, achieving an RMSE of 7-11mm compared to manually labeled ground truth.
- Defined principal axes for the femur and tibia segments using PCA, establishing a consistent coordinate frame.
- Laid the groundwork for a predictive kinematic model based on MRI data input.

## Future Work

While the project established a solid foundation, further improvements and extensions are possible:

- Expand the MRI data set to improve statistical significance and robustness of the predictive model.
- Refine the landmark identification algorithm and explore alternative deep learning approaches.
- Incorporate the identified landmarks and principal axes into a comprehensive kinematic model for joint motion prediction.
- Extend the framework to other joints beyond the knee, enabling broader applications in biomechanics and medical robotics.

## Usage

To use this project, follow these steps:

1. Clone the repository: `git clone https://github.com/venk221/Joint-Kinematics-Prediction-from-Medical-Imaging.git`
2. Install the required dependencies (e.g., Python, NumPy, scikit-learn, etc.).
3. Refer to the project documentation and code for detailed instructions on data processing, landmark identification, and model development.

## Acknowledgments

We would like to acknowledge the support and guidance of our advisors at WPI, who provided the necessary MRI data and insights for this project.
