# KomengTech Website

This is my website that I build with **Flutter Web**, and deployed it on CloudFlare Pages.

The website focus on a **One-page Display** that is **Responsive**, and I design it so that my profile picture will be a background picture for a moment when it overlap the text.

I build the whole **Responsive Website** using only **StatelessWidget Class** as this is one of the best practices to improve performance, which is by controlling the **"build()"** cost. Refer to: https://flutter.dev/docs/perf/rendering/best-practices

https://komengtech.com

<img src="https://user-images.githubusercontent.com/26598827/120305496-61ea5f00-c303-11eb-811f-c2a5499f692f.jpeg" width=500>

## Getting Started

The magic behind building a **Responsive Website** is actually using the **LayoutBuilder()** and managing the different **constraints.maxWidth**. You can always add additional screen layout with different maxwidth parameters.

<pre lang="javascript"><code>
home_screen.dart

class HomeScreen extends StatelessWidget {

  Widget _buildLargeLayout(BuildContext context) {
    // build the layout for a large screen
    return Container();
  }

  Widget _buildMediumLayout(BuildContext context) {
    // build the layout for a medium screen
    return Container();
  }

  Widget _buildSmallLayout(BuildContext context) {
    // build the layout for a small screen
    return Container();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: LayoutBuilder(
        builder: (context, constraints) {
          if (constraints.maxWidth > 1200) {
            return _buildLargeLayout(context);
          } else if (constraints.maxWidth < 1200 &&
              constraints.maxWidth > 800) {
            return _buildMediumLayout(context);
          } else {
            return _buildSmallLayout(context);
          }
        },
      ),
    );
  }
}
</code></pre>
## Usage:

Once you build your website go to your terminal and type:
<pre lang="javascript"><code>
flutter build web --release
</code></pre>

This command will create the **/build/web** folder where you can reference to deploy your website on CloudFlare Pages.

On CloudFlare Pages, go to **Settings -> Build configurations**. Add the below configurations, save and deploy.
<pre lang="javascript"><code>
Framework preset: None
Build command: (Leave Empty)
Build output directory: build/web
</code></pre>
