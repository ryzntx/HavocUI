.class public final synthetic Lcom/android/systemui/screenshot/-$$Lambda$GlobalScreenshot$jRM8StSOVXF_-IUDzkr6hIQjaPw;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/view/View$OnKeyListener;


# instance fields
.field public final synthetic f$0:Lcom/android/systemui/screenshot/GlobalScreenshot;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/screenshot/GlobalScreenshot;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/screenshot/-$$Lambda$GlobalScreenshot$jRM8StSOVXF_-IUDzkr6hIQjaPw;->f$0:Lcom/android/systemui/screenshot/GlobalScreenshot;

    return-void
.end method


# virtual methods
.method public final onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/screenshot/-$$Lambda$GlobalScreenshot$jRM8StSOVXF_-IUDzkr6hIQjaPw;->f$0:Lcom/android/systemui/screenshot/GlobalScreenshot;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/systemui/screenshot/GlobalScreenshot;->lambda$reloadAssets$9$GlobalScreenshot(Landroid/view/View;ILandroid/view/KeyEvent;)Z

    move-result p0

    return p0
.end method
