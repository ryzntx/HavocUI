.class Lcom/android/systemui/theme/ThemeOverlayController$4;
.super Lcom/android/systemui/settings/CurrentUserTracker;
.source "ThemeOverlayController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/theme/ThemeOverlayController;->start()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/theme/ThemeOverlayController;


# direct methods
.method constructor <init>(Lcom/android/systemui/theme/ThemeOverlayController;Lcom/android/systemui/broadcast/BroadcastDispatcher;)V
    .locals 0

    .line 183
    iput-object p1, p0, Lcom/android/systemui/theme/ThemeOverlayController$4;->this$0:Lcom/android/systemui/theme/ThemeOverlayController;

    invoke-direct {p0, p2}, Lcom/android/systemui/settings/CurrentUserTracker;-><init>(Lcom/android/systemui/broadcast/BroadcastDispatcher;)V

    return-void
.end method


# virtual methods
.method public onUserSwitched(I)V
    .locals 0

    .line 187
    iget-object p0, p0, Lcom/android/systemui/theme/ThemeOverlayController$4;->this$0:Lcom/android/systemui/theme/ThemeOverlayController;

    invoke-static {p0}, Lcom/android/systemui/theme/ThemeOverlayController;->access$000(Lcom/android/systemui/theme/ThemeOverlayController;)V

    return-void
.end method
