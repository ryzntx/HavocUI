.class Lcom/android/systemui/pip/PipWindowConfigurationCompact;
.super Ljava/lang/Object;
.source "PipWindowConfigurationCompact.java"


# instance fields
.field private mBounds:Landroid/graphics/Rect;

.field private mRotation:I


# direct methods
.method constructor <init>(Landroid/app/WindowConfiguration;)V
    .locals 1

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    invoke-virtual {p1}, Landroid/app/WindowConfiguration;->getRotation()I

    move-result v0

    iput v0, p0, Lcom/android/systemui/pip/PipWindowConfigurationCompact;->mRotation:I

    .line 39
    invoke-virtual {p1}, Landroid/app/WindowConfiguration;->getBounds()Landroid/graphics/Rect;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/pip/PipWindowConfigurationCompact;->mBounds:Landroid/graphics/Rect;

    return-void
.end method


# virtual methods
.method getBounds()Landroid/graphics/Rect;
    .locals 0

    .line 47
    iget-object p0, p0, Lcom/android/systemui/pip/PipWindowConfigurationCompact;->mBounds:Landroid/graphics/Rect;

    return-object p0
.end method

.method getRotation()I
    .locals 0

    .line 43
    iget p0, p0, Lcom/android/systemui/pip/PipWindowConfigurationCompact;->mRotation:I

    return p0
.end method

.method syncWithScreenOrientation(II)V
    .locals 4

    .line 52
    iget-object v0, p0, Lcom/android/systemui/pip/PipWindowConfigurationCompact;->mBounds:Landroid/graphics/Rect;

    iget v1, v0, Landroid/graphics/Rect;->top:I

    if-nez v1, :cond_6

    iget v0, v0, Landroid/graphics/Rect;->left:I

    if-eqz v0, :cond_0

    goto :goto_1

    .line 57
    :cond_0
    invoke-static {p1}, Landroid/content/pm/ActivityInfo;->isFixedOrientationPortrait(I)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/android/systemui/pip/PipWindowConfigurationCompact;->mRotation:I

    if-eq v0, v2, :cond_1

    const/4 v3, 0x3

    if-ne v0, v3, :cond_2

    .line 59
    :cond_1
    iput v1, p0, Lcom/android/systemui/pip/PipWindowConfigurationCompact;->mRotation:I

    goto :goto_0

    .line 61
    :cond_2
    invoke-static {p1}, Landroid/content/pm/ActivityInfo;->isFixedOrientationLandscape(I)Z

    move-result v0

    if-eqz v0, :cond_4

    iget v0, p0, Lcom/android/systemui/pip/PipWindowConfigurationCompact;->mRotation:I

    if-eqz v0, :cond_3

    const/4 v3, 0x2

    if-ne v0, v3, :cond_4

    .line 63
    :cond_3
    iput v2, p0, Lcom/android/systemui/pip/PipWindowConfigurationCompact;->mRotation:I

    goto :goto_0

    :cond_4
    const/4 v0, -0x1

    if-ne p1, v0, :cond_5

    .line 65
    iget p1, p0, Lcom/android/systemui/pip/PipWindowConfigurationCompact;->mRotation:I

    if-eq p1, p2, :cond_5

    .line 67
    iput p2, p0, Lcom/android/systemui/pip/PipWindowConfigurationCompact;->mRotation:I

    goto :goto_0

    :cond_5
    move v2, v1

    :goto_0
    if-eqz v2, :cond_6

    .line 71
    iget-object p1, p0, Lcom/android/systemui/pip/PipWindowConfigurationCompact;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result p2

    iget-object p0, p0, Lcom/android/systemui/pip/PipWindowConfigurationCompact;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {p0}, Landroid/graphics/Rect;->width()I

    move-result p0

    invoke-virtual {p1, v1, v1, p2, p0}, Landroid/graphics/Rect;->set(IIII)V

    :cond_6
    :goto_1
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 77
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PipWindowConfigurationCompact(rotation="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/systemui/pip/PipWindowConfigurationCompact;->mRotation:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " bounds="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/systemui/pip/PipWindowConfigurationCompact;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
