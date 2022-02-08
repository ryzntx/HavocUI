.class public final synthetic Lcom/android/systemui/media/-$$Lambda$MediaControlPanel$ixKQ03no_VFzBBH8MQU34cmqi64;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/android/systemui/plugins/ActivityStarter$OnDismissAction;


# instance fields
.field public final synthetic f$0:Lcom/android/systemui/media/MediaControlPanel;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/media/MediaControlPanel;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/media/-$$Lambda$MediaControlPanel$ixKQ03no_VFzBBH8MQU34cmqi64;->f$0:Lcom/android/systemui/media/MediaControlPanel;

    return-void
.end method


# virtual methods
.method public final onDismiss()Z
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/media/-$$Lambda$MediaControlPanel$ixKQ03no_VFzBBH8MQU34cmqi64;->f$0:Lcom/android/systemui/media/MediaControlPanel;

    invoke-virtual {p0}, Lcom/android/systemui/media/MediaControlPanel;->lambda$bind$7$MediaControlPanel()Z

    move-result p0

    return p0
.end method
