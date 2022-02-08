.class Lcom/android/systemui/settings/BrightnessController$BrightnessObserver;
.super Landroid/database/ContentObserver;
.source "BrightnessController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/settings/BrightnessController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BrightnessObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/settings/BrightnessController;


# direct methods
.method public constructor <init>(Lcom/android/systemui/settings/BrightnessController;Landroid/os/Handler;)V
    .locals 0

    .line 111
    iput-object p1, p0, Lcom/android/systemui/settings/BrightnessController$BrightnessObserver;->this$0:Lcom/android/systemui/settings/BrightnessController;

    .line 112
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 1

    const/4 v0, 0x0

    .line 117
    invoke-virtual {p0, p1, v0}, Lcom/android/systemui/settings/BrightnessController$BrightnessObserver;->onChange(ZLandroid/net/Uri;)V

    return-void
.end method

.method public onChange(ZLandroid/net/Uri;)V
    .locals 0

    if-eqz p1, :cond_0

    return-void

    .line 124
    :cond_0
    invoke-static {}, Lcom/android/systemui/settings/BrightnessController;->access$000()Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 125
    iget-object p1, p0, Lcom/android/systemui/settings/BrightnessController$BrightnessObserver;->this$0:Lcom/android/systemui/settings/BrightnessController;

    invoke-static {p1}, Lcom/android/systemui/settings/BrightnessController;->access$200(Lcom/android/systemui/settings/BrightnessController;)Landroid/os/Handler;

    move-result-object p1

    iget-object p2, p0, Lcom/android/systemui/settings/BrightnessController$BrightnessObserver;->this$0:Lcom/android/systemui/settings/BrightnessController;

    invoke-static {p2}, Lcom/android/systemui/settings/BrightnessController;->access$100(Lcom/android/systemui/settings/BrightnessController;)Ljava/lang/Runnable;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 126
    iget-object p1, p0, Lcom/android/systemui/settings/BrightnessController$BrightnessObserver;->this$0:Lcom/android/systemui/settings/BrightnessController;

    invoke-static {p1}, Lcom/android/systemui/settings/BrightnessController;->access$200(Lcom/android/systemui/settings/BrightnessController;)Landroid/os/Handler;

    move-result-object p1

    iget-object p2, p0, Lcom/android/systemui/settings/BrightnessController$BrightnessObserver;->this$0:Lcom/android/systemui/settings/BrightnessController;

    invoke-static {p2}, Lcom/android/systemui/settings/BrightnessController;->access$300(Lcom/android/systemui/settings/BrightnessController;)Ljava/lang/Runnable;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 127
    :cond_1
    invoke-static {}, Lcom/android/systemui/settings/BrightnessController;->access$400()Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 128
    iget-object p1, p0, Lcom/android/systemui/settings/BrightnessController$BrightnessObserver;->this$0:Lcom/android/systemui/settings/BrightnessController;

    invoke-static {p1}, Lcom/android/systemui/settings/BrightnessController;->access$200(Lcom/android/systemui/settings/BrightnessController;)Landroid/os/Handler;

    move-result-object p1

    iget-object p2, p0, Lcom/android/systemui/settings/BrightnessController$BrightnessObserver;->this$0:Lcom/android/systemui/settings/BrightnessController;

    invoke-static {p2}, Lcom/android/systemui/settings/BrightnessController;->access$300(Lcom/android/systemui/settings/BrightnessController;)Ljava/lang/Runnable;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 129
    :cond_2
    invoke-static {}, Lcom/android/systemui/settings/BrightnessController;->access$500()Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 130
    iget-object p1, p0, Lcom/android/systemui/settings/BrightnessController$BrightnessObserver;->this$0:Lcom/android/systemui/settings/BrightnessController;

    invoke-static {p1}, Lcom/android/systemui/settings/BrightnessController;->access$200(Lcom/android/systemui/settings/BrightnessController;)Landroid/os/Handler;

    move-result-object p1

    iget-object p2, p0, Lcom/android/systemui/settings/BrightnessController$BrightnessObserver;->this$0:Lcom/android/systemui/settings/BrightnessController;

    invoke-static {p2}, Lcom/android/systemui/settings/BrightnessController;->access$300(Lcom/android/systemui/settings/BrightnessController;)Ljava/lang/Runnable;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 132
    :cond_3
    iget-object p1, p0, Lcom/android/systemui/settings/BrightnessController$BrightnessObserver;->this$0:Lcom/android/systemui/settings/BrightnessController;

    invoke-static {p1}, Lcom/android/systemui/settings/BrightnessController;->access$200(Lcom/android/systemui/settings/BrightnessController;)Landroid/os/Handler;

    move-result-object p1

    iget-object p2, p0, Lcom/android/systemui/settings/BrightnessController$BrightnessObserver;->this$0:Lcom/android/systemui/settings/BrightnessController;

    invoke-static {p2}, Lcom/android/systemui/settings/BrightnessController;->access$100(Lcom/android/systemui/settings/BrightnessController;)Ljava/lang/Runnable;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 133
    iget-object p1, p0, Lcom/android/systemui/settings/BrightnessController$BrightnessObserver;->this$0:Lcom/android/systemui/settings/BrightnessController;

    invoke-static {p1}, Lcom/android/systemui/settings/BrightnessController;->access$200(Lcom/android/systemui/settings/BrightnessController;)Landroid/os/Handler;

    move-result-object p1

    iget-object p2, p0, Lcom/android/systemui/settings/BrightnessController$BrightnessObserver;->this$0:Lcom/android/systemui/settings/BrightnessController;

    invoke-static {p2}, Lcom/android/systemui/settings/BrightnessController;->access$300(Lcom/android/systemui/settings/BrightnessController;)Ljava/lang/Runnable;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 135
    :goto_0
    iget-object p0, p0, Lcom/android/systemui/settings/BrightnessController$BrightnessObserver;->this$0:Lcom/android/systemui/settings/BrightnessController;

    invoke-static {p0}, Lcom/android/systemui/settings/BrightnessController;->access$600(Lcom/android/systemui/settings/BrightnessController;)Ljava/util/ArrayList;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_4

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/settings/BrightnessController$BrightnessStateChangeCallback;

    .line 136
    invoke-interface {p1}, Lcom/android/systemui/settings/BrightnessController$BrightnessStateChangeCallback;->onBrightnessLevelChanged()V

    goto :goto_1

    :cond_4
    return-void
.end method

.method public startObserving()V
    .locals 4

    .line 141
    iget-object v0, p0, Lcom/android/systemui/settings/BrightnessController$BrightnessObserver;->this$0:Lcom/android/systemui/settings/BrightnessController;

    invoke-static {v0}, Lcom/android/systemui/settings/BrightnessController;->access$700(Lcom/android/systemui/settings/BrightnessController;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 142
    invoke-virtual {v0, p0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 144
    invoke-static {}, Lcom/android/systemui/settings/BrightnessController;->access$000()Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, -0x1

    .line 143
    invoke-virtual {v0, v1, v2, p0, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 147
    invoke-static {}, Lcom/android/systemui/settings/BrightnessController;->access$800()Landroid/net/Uri;

    move-result-object v1

    .line 146
    invoke-virtual {v0, v1, v2, p0, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 150
    invoke-static {}, Lcom/android/systemui/settings/BrightnessController;->access$400()Landroid/net/Uri;

    move-result-object v1

    .line 149
    invoke-virtual {v0, v1, v2, p0, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 153
    invoke-static {}, Lcom/android/systemui/settings/BrightnessController;->access$500()Landroid/net/Uri;

    move-result-object v1

    .line 152
    invoke-virtual {v0, v1, v2, p0, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    return-void
.end method

.method public stopObserving()V
    .locals 1

    .line 158
    iget-object v0, p0, Lcom/android/systemui/settings/BrightnessController$BrightnessObserver;->this$0:Lcom/android/systemui/settings/BrightnessController;

    invoke-static {v0}, Lcom/android/systemui/settings/BrightnessController;->access$700(Lcom/android/systemui/settings/BrightnessController;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 159
    invoke-virtual {v0, p0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    return-void
.end method
