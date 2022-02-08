.class public final synthetic Lcom/android/systemui/screenshot/-$$Lambda$GlobalScreenshot$TJcRvhVujsjw77ihiHlbZwvsXuQ;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/android/systemui/screenshot/ScreenshotSelectorView$OnSelectionListener;


# instance fields
.field public final synthetic f$0:Lcom/android/systemui/screenshot/GlobalScreenshot;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/screenshot/GlobalScreenshot;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/screenshot/-$$Lambda$GlobalScreenshot$TJcRvhVujsjw77ihiHlbZwvsXuQ;->f$0:Lcom/android/systemui/screenshot/GlobalScreenshot;

    return-void
.end method


# virtual methods
.method public final onSelectionChanged(Landroid/graphics/Rect;Z)V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/screenshot/-$$Lambda$GlobalScreenshot$TJcRvhVujsjw77ihiHlbZwvsXuQ;->f$0:Lcom/android/systemui/screenshot/GlobalScreenshot;

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/screenshot/GlobalScreenshot;->lambda$takeScreenshotPartial$1$GlobalScreenshot(Landroid/graphics/Rect;Z)V

    return-void
.end method
