.class public final synthetic Lcom/android/systemui/screenshot/-$$Lambda$GlobalScreenshot$tGDn-j3Jmz8WYSTha9TFVqy9_c0;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field public final synthetic f$0:Lcom/android/systemui/screenshot/GlobalScreenshot;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/screenshot/GlobalScreenshot;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/screenshot/-$$Lambda$GlobalScreenshot$tGDn-j3Jmz8WYSTha9TFVqy9_c0;->f$0:Lcom/android/systemui/screenshot/GlobalScreenshot;

    return-void
.end method


# virtual methods
.method public final onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/screenshot/-$$Lambda$GlobalScreenshot$tGDn-j3Jmz8WYSTha9TFVqy9_c0;->f$0:Lcom/android/systemui/screenshot/GlobalScreenshot;

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/screenshot/GlobalScreenshot;->lambda$reloadAssets$7$GlobalScreenshot(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method
