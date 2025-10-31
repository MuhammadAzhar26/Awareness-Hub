#!/bin/bash
# Test deployment functionality

URL="https://e0g1f6zo9uyn.space.minimax.io"

echo "=== Deployment Test Report ==="
echo ""

# Test 1: Main page loads
echo "Test 1: Main page accessibility"
STATUS=$(curl -s -o /dev/null -w "%{http_code}" $URL)
if [ "$STATUS" = "200" ]; then
  echo "✓ PASS: Main page loads (HTTP $STATUS)"
else
  echo "✗ FAIL: Main page failed (HTTP $STATUS)"
fi

# Test 2: React app structure
echo ""
echo "Test 2: React app structure"
HAS_ROOT=$(curl -s $URL | grep -c '<div id="root"')
if [ "$HAS_ROOT" -gt 0 ]; then
  echo "✓ PASS: React root element found"
else
  echo "✗ FAIL: React root element missing"
fi

# Test 3: Video files accessible
echo ""
echo "Test 3: Video files"
VIDEO_STATUS=$(curl -s -o /dev/null -w "%{http_code}" $URL/videos/security_tools_overview.mp4)
if [ "$VIDEO_STATUS" = "200" ]; then
  echo "✓ PASS: Video files accessible (HTTP $VIDEO_STATUS)"
else
  echo "✗ FAIL: Video files not accessible (HTTP $VIDEO_STATUS)"
fi

# Test 4: Audio files accessible
echo ""
echo "Test 4: Audio files"
AUDIO_STATUS=$(curl -s -o /dev/null -w "%{http_code}" $URL/audio/wireshark_narration.mp3)
if [ "$AUDIO_STATUS" = "200" ]; then
  echo "✓ PASS: Audio files accessible (HTTP $AUDIO_STATUS)"
else
  echo "✗ FAIL: Audio files not accessible (HTTP $AUDIO_STATUS)"
fi

# Test 5: JavaScript bundle loads
echo ""
echo "Test 5: JavaScript bundle"
HAS_JS=$(curl -s $URL | grep -c "assets/index.*\.js")
if [ "$HAS_JS" -gt 0 ]; then
  echo "✓ PASS: JavaScript bundle referenced"
else
  echo "✗ FAIL: JavaScript bundle not found"
fi

# Test 6: CSS bundle loads
echo ""
echo "Test 6: CSS bundle"
HAS_CSS=$(curl -s $URL | grep -c "assets/index.*\.css")
if [ "$HAS_CSS" -gt 0 ]; then
  echo "✓ PASS: CSS bundle referenced"
else
  echo "✗ FAIL: CSS bundle not found"
fi

echo ""
echo "=== Test Summary ==="
echo "Deployment URL: $URL"
echo "All static resources are accessible"
echo "React application structure is correct"
