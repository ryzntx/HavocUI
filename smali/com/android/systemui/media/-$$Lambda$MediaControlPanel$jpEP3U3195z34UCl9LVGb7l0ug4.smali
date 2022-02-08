.class public final synthetic Lcom/android/systemui/media/-$$Lambda$MediaControlPanel$jpEP3U3195z34UCl9LVGb7l0ug4;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic f$0:Lcom/android/systemui/media/MediaControlPanel;

.field public final synthetic f$1:Landroid/app/PendingIntent;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/media/MediaControlPanel;Landroid/app/PendingIntent;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/media/-$$Lambda$MediaControlPanel$jpEP3U3195z34UCl9LVGb7l0ug4;->f$0:Lcom/android/systemui/media/MediaControlPanel;

    iput-object p2, p0, Lcom/android/systemui/media/-$$Lambda$MediaControlPanel$jpEP3U3195z34UCl9LVGb7l0ug4;->f$1:Landroid/app/PendingIntent;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/media/-$$Lambda$MediaControlPanel$jpEP3U3195z34UCl9LVGb7l0ug4;->f$0:Lcom/android/systemui/media/MediaControlPanel;

    iget-object p0, p0, Lcom/android/systemui/media/-$$Lambda$MediaControlPanel$jpEP3U3195z34UCl9LVGb7l0ug4;->f$1:Landroid/app/PendingIntent;

    invoke-virtual {v0, p0, p1}, Lcom/android/systemui/media/MediaControlPanel;->lambda$bind$3$MediaControlPanel(Landroid/app/PendingIntent;Landroid/view/View;)V

    return-void
.end method
