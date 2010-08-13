/* 
 Boxer is copyright 2010 Alun Bestor and contributors.
 Boxer is released under the GNU General Public License 2.0. A full copy of this license can be
 found in this XCode project at Resources/English.lproj/GNU General Public License.txt, or read
 online at [http://www.gnu.org/licenses/gpl-2.0.txt].
 */


#import "BXBottomBar.h"

@implementation BXBottomBar

- (void) drawRect: (NSRect)dirtyRect
{
	NSRect bezelRect = [self bounds];
	bezelRect.origin.y += bezelRect.size.height - 1.0f;
	bezelRect.size.height = 1.0f;
	
	if (NSIntersectsRect(dirtyRect, bezelRect))
	{
		NSColor *bezelColor = [NSColor colorWithCalibratedWhite: 1.0f alpha: 0.5f];
		
		[bezelColor set];
		[NSBezierPath fillRect: bezelRect];		
	}
}

@end