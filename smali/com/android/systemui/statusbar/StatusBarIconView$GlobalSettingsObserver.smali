.class Lcom/android/systemui/statusbar/StatusBarIconView$GlobalSettingsObserver;
.super Landroid/database/ContentObserver;
.source "StatusBarIconView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/StatusBarIconView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "GlobalSettingsObserver"
.end annotation


# static fields
.field private static sInstance:Lcom/android/systemui/statusbar/StatusBarIconView$GlobalSettingsObserver;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mIconViews:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/systemui/statusbar/StatusBarIconView;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroid/os/Handler;Landroid/content/Context;)V
    .locals 0

    .line 1068
    invoke-direct {p0, p1}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 1064
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/StatusBarIconView$GlobalSettingsObserver;->mIconViews:Ljava/util/ArrayList;

    .line 1069
    invoke-virtual {p2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/statusbar/StatusBarIconView$GlobalSettingsObserver;->mContext:Landroid/content/Context;

    return-void
.end method

.method static getInstance(Landroid/content/Context;)Lcom/android/systemui/statusbar/StatusBarIconView$GlobalSettingsObserver;
    .locals 2

    .line 1073
    sget-object v0, Lcom/android/systemui/statusbar/StatusBarIconView$GlobalSettingsObserver;->sInstance:Lcom/android/systemui/statusbar/StatusBarIconView$GlobalSettingsObserver;

    if-nez v0, :cond_0

    .line 1074
    new-instance v0, Lcom/android/systemui/statusbar/StatusBarIconView$GlobalSettingsObserver;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, v1, p0}, Lcom/android/systemui/statusbar/StatusBarIconView$GlobalSettingsObserver;-><init>(Landroid/os/Handler;Landroid/content/Context;)V

    sput-object v0, Lcom/android/systemui/statusbar/StatusBarIconView$GlobalSettingsObserver;->sInstance:Lcom/android/systemui/statusbar/StatusBarIconView$GlobalSettingsObserver;

    .line 1076
    :cond_0
    sget-object p0, Lcom/android/systemui/statusbar/StatusBarIconView$GlobalSettingsObserver;->sInstance:Lcom/android/systemui/statusbar/StatusBarIconView$GlobalSettingsObserver;

    return-object p0
.end method


# virtual methods
.method attach(Lcom/android/systemui/statusbar/StatusBarIconView;)V
    .locals 1

    .line 1080
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarIconView$GlobalSettingsObserver;->mIconViews:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1081
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/StatusBarIconView$GlobalSettingsObserver;->observe()V

    .line 1083
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/statusbar/StatusBarIconView$GlobalSettingsObserver;->mIconViews:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method detach(Lcom/android/systemui/statusbar/StatusBarIconView;)V
    .locals 1

    .line 1087
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarIconView$GlobalSettingsObserver;->mIconViews:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1088
    iget-object p1, p0, Lcom/android/systemui/statusbar/StatusBarIconView$GlobalSettingsObserver;->mIconViews:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 1089
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/StatusBarIconView$GlobalSettingsObserver;->unobserve()V

    :cond_0
    return-void
.end method

.method observe()V
    .locals 3

    .line 1094
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarIconView$GlobalSettingsObserver;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "status_bar_notif_count"

    .line 1095
    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    .line 1094
    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    return-void
.end method

.method public onChange(Z)V
    .locals 3

    .line 1105
    iget-object p1, p0, Lcom/android/systemui/statusbar/StatusBarIconView$GlobalSettingsObserver;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v0, "status_bar_notif_count"

    const/4 v1, 0x0

    const/4 v2, -0x2

    invoke-static {p1, v0, v1, v2}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    move v1, v0

    .line 1107
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/statusbar/StatusBarIconView$GlobalSettingsObserver;->mIconViews:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/statusbar/StatusBarIconView;

    .line 1108
    invoke-static {p1, v1}, Lcom/android/systemui/statusbar/StatusBarIconView;->access$502(Lcom/android/systemui/statusbar/StatusBarIconView;Z)Z

    .line 1109
    invoke-static {p1}, Lcom/android/systemui/statusbar/StatusBarIconView;->access$600(Lcom/android/systemui/statusbar/StatusBarIconView;)Lcom/android/internal/statusbar/StatusBarIcon;

    move-result-object v2

    invoke-static {p1, v2, v0}, Lcom/android/systemui/statusbar/StatusBarIconView;->access$700(Lcom/android/systemui/statusbar/StatusBarIconView;Lcom/android/internal/statusbar/StatusBarIcon;Z)Z

    goto :goto_0

    :cond_1
    return-void
.end method

.method unobserve()V
    .locals 1

    .line 1100
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarIconView$GlobalSettingsObserver;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    return-void
.end method
