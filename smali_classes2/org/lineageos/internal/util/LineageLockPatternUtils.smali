.class public Lorg/lineageos/internal/util/LineageLockPatternUtils;
.super Lcom/android/internal/widget/LockPatternUtils;
.source "LineageLockPatternUtils.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public shouldPassToSecurityView(I)Z
    .locals 2

    const-string/jumbo v0, "lock_screen_pass_to_security_view"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, p1}, Lorg/lineageos/internal/util/LineageLockPatternUtils;->getBoolean(Ljava/lang/String;ZI)Z

    move-result v0

    return v0
.end method
