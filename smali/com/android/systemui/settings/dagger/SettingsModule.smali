.class public abstract Lcom/android/systemui/settings/dagger/SettingsModule;
.super Ljava/lang/Object;
.source "SettingsModule.java"


# direct methods
.method static provideCurrentUserContextTracker(Landroid/content/Context;Lcom/android/systemui/broadcast/BroadcastDispatcher;)Lcom/android/systemui/settings/CurrentUserContextTracker;
    .locals 1

    .line 45
    new-instance v0, Lcom/android/systemui/settings/CurrentUserContextTracker;

    invoke-direct {v0, p0, p1}, Lcom/android/systemui/settings/CurrentUserContextTracker;-><init>(Landroid/content/Context;Lcom/android/systemui/broadcast/BroadcastDispatcher;)V

    .line 47
    invoke-virtual {v0}, Lcom/android/systemui/settings/CurrentUserContextTracker;->initialize()V

    return-object v0
.end method
