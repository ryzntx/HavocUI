.class Lcom/android/systemui/pip/tv/PipManager$4;
.super Ljava/lang/Object;
.source "PipManager.java"

# interfaces
.implements Landroid/media/session/MediaSessionManager$OnActiveSessionsChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/pip/tv/PipManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/pip/tv/PipManager;


# direct methods
.method constructor <init>(Lcom/android/systemui/pip/tv/PipManager;)V
    .locals 0

    .line 182
    iput-object p1, p0, Lcom/android/systemui/pip/tv/PipManager$4;->this$0:Lcom/android/systemui/pip/tv/PipManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onActiveSessionsChanged(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/media/session/MediaController;",
            ">;)V"
        }
    .end annotation

    .line 185
    iget-object p0, p0, Lcom/android/systemui/pip/tv/PipManager$4;->this$0:Lcom/android/systemui/pip/tv/PipManager;

    invoke-static {p0, p1}, Lcom/android/systemui/pip/tv/PipManager;->access$300(Lcom/android/systemui/pip/tv/PipManager;Ljava/util/List;)V

    return-void
.end method
