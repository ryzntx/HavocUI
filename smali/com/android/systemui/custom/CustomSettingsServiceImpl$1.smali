.class Lcom/android/systemui/custom/CustomSettingsServiceImpl$1;
.super Lcom/android/systemui/settings/CurrentUserTracker;
.source "CustomSettingsServiceImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/custom/CustomSettingsServiceImpl;-><init>(Landroid/content/Context;Landroid/os/Handler;Lcom/android/systemui/broadcast/BroadcastDispatcher;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/custom/CustomSettingsServiceImpl;


# direct methods
.method constructor <init>(Lcom/android/systemui/custom/CustomSettingsServiceImpl;Lcom/android/systemui/broadcast/BroadcastDispatcher;)V
    .locals 0

    .line 77
    iput-object p1, p0, Lcom/android/systemui/custom/CustomSettingsServiceImpl$1;->this$0:Lcom/android/systemui/custom/CustomSettingsServiceImpl;

    invoke-direct {p0, p2}, Lcom/android/systemui/settings/CurrentUserTracker;-><init>(Lcom/android/systemui/broadcast/BroadcastDispatcher;)V

    return-void
.end method


# virtual methods
.method public onUserSwitched(I)V
    .locals 1

    .line 80
    iget-object v0, p0, Lcom/android/systemui/custom/CustomSettingsServiceImpl$1;->this$0:Lcom/android/systemui/custom/CustomSettingsServiceImpl;

    invoke-static {v0, p1}, Lcom/android/systemui/custom/CustomSettingsServiceImpl;->access$002(Lcom/android/systemui/custom/CustomSettingsServiceImpl;I)I

    .line 81
    iget-object p1, p0, Lcom/android/systemui/custom/CustomSettingsServiceImpl$1;->this$0:Lcom/android/systemui/custom/CustomSettingsServiceImpl;

    invoke-static {p1}, Lcom/android/systemui/custom/CustomSettingsServiceImpl;->access$100(Lcom/android/systemui/custom/CustomSettingsServiceImpl;)V

    .line 82
    iget-object p0, p0, Lcom/android/systemui/custom/CustomSettingsServiceImpl$1;->this$0:Lcom/android/systemui/custom/CustomSettingsServiceImpl;

    invoke-virtual {p0}, Lcom/android/systemui/custom/CustomSettingsServiceImpl;->reregisterAll()V

    return-void
.end method
