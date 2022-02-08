.class final Lcom/android/systemui/statusbar/phone/NavigationBarTransitions$GradientObserver;
.super Landroid/database/ContentObserver;
.source "NavigationBarTransitions.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/phone/NavigationBarTransitions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "GradientObserver"
.end annotation


# static fields
.field private static final DYNAMIC_SYSTEM_BARS_GRADIENT_URI:Landroid/net/Uri;


# instance fields
.field private final mDrawable:Lcom/android/systemui/statusbar/phone/NavigationBarTransitions$NavigationBarBackgroundDrawable;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "DYNAMIC_NAVIGATION_BARS_GRADIENT_STATE"

    .line 35
    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/statusbar/phone/NavigationBarTransitions$GradientObserver;->DYNAMIC_SYSTEM_BARS_GRADIENT_URI:Landroid/net/Uri;

    return-void
.end method

.method constructor <init>(Lcom/android/systemui/statusbar/phone/NavigationBarTransitions$NavigationBarBackgroundDrawable;Landroid/os/Handler;)V
    .locals 0

    .line 39
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 40
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarTransitions$GradientObserver;->mDrawable:Lcom/android/systemui/statusbar/phone/NavigationBarTransitions$NavigationBarBackgroundDrawable;

    return-void
.end method

.method static synthetic access$100()Landroid/net/Uri;
    .locals 1

    .line 34
    sget-object v0, Lcom/android/systemui/statusbar/phone/NavigationBarTransitions$GradientObserver;->DYNAMIC_SYSTEM_BARS_GRADIENT_URI:Landroid/net/Uri;

    return-object v0
.end method


# virtual methods
.method public onChange(Z)V
    .locals 2

    .line 46
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarTransitions$GradientObserver;->mDrawable:Lcom/android/systemui/statusbar/phone/NavigationBarTransitions$NavigationBarBackgroundDrawable;

    .line 47
    invoke-static {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarTransitions$NavigationBarBackgroundDrawable;->access$000(Lcom/android/systemui/statusbar/phone/NavigationBarTransitions$NavigationBarBackgroundDrawable;)Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v0, "DYNAMIC_NAVIGATION_BARS_GRADIENT_STATE"

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    const/16 v1, 0xff

    .line 50
    :cond_0
    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/phone/NavigationBarTransitions$NavigationBarBackgroundDrawable;->setOverrideGradientAlpha(I)V

    return-void
.end method
