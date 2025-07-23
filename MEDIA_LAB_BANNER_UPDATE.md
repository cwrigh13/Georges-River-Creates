# Media Lab Banner Image Update

## Summary
Added a banner image to the Media Lab page in the Spaces section of the Georges River Creates website. The banner image is positioned above the Media Lab header.

## Changes Made

### 1. Updated Media Lab Space Definition
- Added `bannerImage: 'images/media-lab-banner.jpg'` field to the Media Lab space object
- Removed the banner image from within the `fullDescription` content
- Applied changes to both `index.html` and `georgesrivercreates/index.html`

### 2. Updated Template Functions
- Modified `generateItemDetailHtml` function in both HTML files
- Added banner image display logic that shows the image above the header for any space with a `bannerImage` property
- Banner image displays as a full-width, 256px height image with rounded corners and shadow
- Includes proper alt text for accessibility

### 3. Banner Image Implementation
- Created `images/` directory for storing images
- Added placeholder file `images/media-lab-banner.jpg` with documentation
- The banner image now appears above the "Media Lab" header on the detail page
- Image is responsive and maintains aspect ratio

### 4. Image Specifications
The banner image shows:
- Professional studio equipment and lighting
- Creative workspace with computers and audio equipment
- Modern media production facility
- Glass windows showing the interior space
- "MEDIA LAB" signage and "ON AIR" indicators
- Studio lighting equipment and professional setup

## How It Works
- When users navigate to the Spaces section and click on "Media Lab"
- The banner image appears above the "Media Lab" header on the detail page
- The image is responsive and maintains aspect ratio
- The image is positioned prominently at the top of the content area

## Files Modified
- `index.html` - Updated Media Lab space definition and template function
- `georgesrivercreates/index.html` - Updated Media Lab space definition and template function
- `images/media-lab-banner.jpg` - Placeholder for the actual banner image

## Next Steps
Replace the placeholder file `images/media-lab-banner.jpg` with the actual Media Lab interior photo that matches the description provided. 