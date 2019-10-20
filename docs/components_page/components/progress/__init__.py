from pathlib import Path

import dash_core_components as dcc
import dash_html_components as html

from ...api_doc import ApiDoc
from ...helpers import (
    ExampleContainer,
    HighlightedSource,
    load_source_with_environment,
)
from ...metadata import get_component_metadata
from .background import progress as progress_background
from .height import progress as progress_height
from .labels import progress as progress_labels
from .multiple import progress as progress_multiple
from .progress import progress
from .stripes import progress as progress_striped

HERE = Path(__file__).parent

progress_source = (HERE / "progress.py").read_text()
progress_labels_source = (HERE / "progress.py").read_text()
progress_height_source = (HERE / "height.py").read_text()
progress_background_source = (HERE / "background.py").read_text()
progress_multiple_source = (HERE / "multiple.py").read_text()
progress_striped_source = (HERE / "stripes.py").read_text()
progress_animated_source = (HERE / "animated.py").read_text()
progress_interval_source = (HERE / "interval.py").read_text()


def get_content(app):
    return [
        html.H2("Progress", className="display-4"),
        html.P(
            dcc.Markdown(
                "Add Bootstrap style progress bars to your app with the "
                "`Progress` component, featuring support for stacked bars, "
                "animated backgrounds, and text labels."
            ),
            className="lead",
        ),
        html.H4("Basic example"),
        html.P(
            dcc.Markdown(
                "Use the `value` argument of `Progress` to set progress."
            )
        ),
        ExampleContainer(progress),
        HighlightedSource(progress_source),
        html.H4("Labels"),
        html.P(
            dcc.Markdown(
                "To add a text label to the progress bar, simply add it as a "
                "child."
            )
        ),
        ExampleContainer(progress_labels),
        HighlightedSource(progress_labels_source),
        html.H4("Height"),
        html.P(
            dcc.Markdown(
                "Set the height of the progress bar using the `style` "
                "argument."
            )
        ),
        ExampleContainer(progress_height),
        HighlightedSource(progress_height_source),
        html.H4("Backgrounds"),
        html.P(
            dcc.Markdown(
                "Use the `color` argument along with one of Bootstrap's "
                "contextual color names to set the background color of the "
                "progress bar."
            )
        ),
        ExampleContainer(progress_background),
        HighlightedSource(progress_background_source),
        html.H4("Multiple bars"),
        html.P(
            dcc.Markdown(
                "You can nest `Progress` components to make a progress bar "
                "with multiple bars. Set `multi=True` on the parent "
                "`Progress` component, and `bar=True` on each child."
            )
        ),
        ExampleContainer(progress_multiple),
        HighlightedSource(progress_multiple_source),
        html.H4("Striped bars"),
        html.P(dcc.Markdown("Set `striped=True` for a striped progress bar.")),
        ExampleContainer(progress_striped),
        HighlightedSource(progress_striped_source),
        html.H4("Animated stripes"),
        html.P(
            dcc.Markdown(
                "If you have set `striped=True`, you can also set "
                "`animated=True` to get animated stripes."
            )
        ),
        ExampleContainer(
            load_source_with_environment(
                progress_animated_source, "progress", {"app": app}
            )
        ),
        HighlightedSource(progress_animated_source),
        html.H4("Example with interval"),
        html.P(
            dcc.Markdown(
                "Typically to use `Progress` effectively, you will want to "
                "use a `dcc.Interval` component to periodically monitor some "
                "background process and update the progress accordingly. In "
                "this example we show the approximate structure, without "
                "running any particular background process."
            )
        ),
        ExampleContainer(
            load_source_with_environment(
                progress_interval_source, "progress", {"app": app}
            )
        ),
        HighlightedSource(progress_interval_source),
        ApiDoc(get_component_metadata("src/components/Progress.js")),
    ]
