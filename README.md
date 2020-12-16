# safe_filename

Dart package that provides a function to strip reserved characters from a filename.

DISCLAIMER: This is a beta and it wasn't properly tested yet. Use at your own risk.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.

## Usage

```
import 'package:safe_filename/safe_filename.dart' as SafeFilename;

void main() {
  String veryUnsafeFilename = 'File Name 152 &\$ "*/:<>?\\|.file';
  String safeFilename = (SafeFilename.encode(veryUnsafeFilename, onlyAlphanumeric: true, separator: ''));
  print(safeFilename); // FileName152.file
}
```
