.class Lcom/android/systemui/navigation/pulse/FadingBlockRenderer$LegacySettingsObserver;
.super Landroid/database/ContentObserver;
.source "FadingBlockRenderer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/navigation/pulse/FadingBlockRenderer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LegacySettingsObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/navigation/pulse/FadingBlockRenderer;


# direct methods
.method public constructor <init>(Lcom/android/systemui/navigation/pulse/FadingBlockRenderer;Landroid/os/Handler;)V
    .locals 0

    .line 182
    iput-object p1, p0, Lcom/android/systemui/navigation/pulse/FadingBlockRenderer$LegacySettingsObserver;->this$0:Lcom/android/systemui/navigation/pulse/FadingBlockRenderer;

    .line 183
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 184
    invoke-virtual {p0}, Lcom/android/systemui/navigation/pulse/FadingBlockRenderer$LegacySettingsObserver;->register()V

    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .locals 0

    .line 217
    invoke-virtual {p0}, Lcom/android/systemui/navigation/pulse/FadingBlockRenderer$LegacySettingsObserver;->updateSettings()V

    return-void
.end method

.method register()V
    .locals 4

    .line 188
    iget-object v0, p0, Lcom/android/systemui/navigation/pulse/FadingBlockRenderer$LegacySettingsObserver;->this$0:Lcom/android/systemui/navigation/pulse/FadingBlockRenderer;

    iget-object v0, v0, Lcom/android/systemui/navigation/pulse/Renderer;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "pulse_custom_dimen"

    .line 190
    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, -0x1

    .line 189
    invoke-virtual {v0, v1, v2, p0, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    const-string v1, "pulse_custom_div"

    .line 194
    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 193
    invoke-virtual {v0, v1, v2, p0, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    const-string v1, "pulse_filled_block_size"

    .line 198
    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 197
    invoke-virtual {v0, v1, v2, p0, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    const-string v1, "pulse_empty_block_size"

    .line 202
    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 201
    invoke-virtual {v0, v1, v2, p0, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    const-string v1, "pulse_custom_fudge_factor"

    .line 206
    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 205
    invoke-virtual {v0, v1, v2, p0, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    const-string v1, "pulse_smoothing_enabled"

    .line 210
    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 209
    invoke-virtual {v0, v1, v2, p0, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    return-void
.end method

.method public updateSettings()V
    .locals 14

    .line 221
    iget-object v0, p0, Lcom/android/systemui/navigation/pulse/FadingBlockRenderer$LegacySettingsObserver;->this$0:Lcom/android/systemui/navigation/pulse/FadingBlockRenderer;

    iget-object v0, v0, Lcom/android/systemui/navigation/pulse/Renderer;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 222
    iget-object v1, p0, Lcom/android/systemui/navigation/pulse/FadingBlockRenderer$LegacySettingsObserver;->this$0:Lcom/android/systemui/navigation/pulse/FadingBlockRenderer;

    iget-object v1, v1, Lcom/android/systemui/navigation/pulse/Renderer;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const-string v2, "pulse_empty_block_size"

    const/4 v3, 0x1

    const/4 v4, -0x2

    .line 224
    invoke-static {v0, v2, v3, v4}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v2

    const-string v5, "pulse_custom_dimen"

    const/16 v6, 0xe

    .line 227
    invoke-static {v0, v5, v6, v4}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v5

    const-string v6, "pulse_custom_div"

    const/16 v7, 0x10

    .line 230
    invoke-static {v0, v6, v7, v4}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v6

    const-string v7, "pulse_custom_fudge_factor"

    const/4 v8, 0x4

    .line 233
    invoke-static {v0, v7, v8, v4}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v7

    const-string v9, "pulse_filled_block_size"

    .line 236
    invoke-static {v0, v9, v8, v4}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v9

    const/16 v10, 0x8

    .line 240
    invoke-static {v9, v8, v10, v1}, Lcom/android/systemui/navigation/pulse/FadingBlockRenderer;->access$000(IIILandroid/content/res/Resources;)I

    move-result v9

    const/4 v10, 0x0

    .line 241
    invoke-static {v2, v10, v8, v1}, Lcom/android/systemui/navigation/pulse/FadingBlockRenderer;->access$000(IIILandroid/content/res/Resources;)I

    move-result v2

    .line 242
    iget-object v8, p0, Lcom/android/systemui/navigation/pulse/FadingBlockRenderer$LegacySettingsObserver;->this$0:Lcom/android/systemui/navigation/pulse/FadingBlockRenderer;

    invoke-static {v8}, Lcom/android/systemui/navigation/pulse/FadingBlockRenderer;->access$100(Lcom/android/systemui/navigation/pulse/FadingBlockRenderer;)Landroid/graphics/Paint;

    move-result-object v8

    const/4 v11, 0x0

    invoke-virtual {v8, v11}, Landroid/graphics/Paint;->setPathEffect(Landroid/graphics/PathEffect;)Landroid/graphics/PathEffect;

    .line 243
    iget-object v8, p0, Lcom/android/systemui/navigation/pulse/FadingBlockRenderer$LegacySettingsObserver;->this$0:Lcom/android/systemui/navigation/pulse/FadingBlockRenderer;

    invoke-static {v8}, Lcom/android/systemui/navigation/pulse/FadingBlockRenderer;->access$100(Lcom/android/systemui/navigation/pulse/FadingBlockRenderer;)Landroid/graphics/Paint;

    move-result-object v8

    new-instance v11, Landroid/graphics/DashPathEffect;

    const/4 v12, 0x2

    new-array v13, v12, [F

    int-to-float v9, v9

    aput v9, v13, v10

    int-to-float v2, v2

    aput v2, v13, v3

    const/4 v2, 0x0

    invoke-direct {v11, v13, v2}, Landroid/graphics/DashPathEffect;-><init>([FF)V

    invoke-virtual {v8, v11}, Landroid/graphics/Paint;->setPathEffect(Landroid/graphics/PathEffect;)Landroid/graphics/PathEffect;

    .line 247
    iget-object v2, p0, Lcom/android/systemui/navigation/pulse/FadingBlockRenderer$LegacySettingsObserver;->this$0:Lcom/android/systemui/navigation/pulse/FadingBlockRenderer;

    invoke-static {v2}, Lcom/android/systemui/navigation/pulse/FadingBlockRenderer;->access$100(Lcom/android/systemui/navigation/pulse/FadingBlockRenderer;)Landroid/graphics/Paint;

    move-result-object v2

    const/16 v8, 0x1e

    invoke-static {v5, v3, v8, v1}, Lcom/android/systemui/navigation/pulse/FadingBlockRenderer;->access$000(IIILandroid/content/res/Resources;)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v2, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 248
    iget-object v1, p0, Lcom/android/systemui/navigation/pulse/FadingBlockRenderer$LegacySettingsObserver;->this$0:Lcom/android/systemui/navigation/pulse/FadingBlockRenderer;

    invoke-static {v6}, Lcom/android/systemui/navigation/pulse/FadingBlockRenderer;->access$300(I)I

    move-result v2

    invoke-static {v1, v2}, Lcom/android/systemui/navigation/pulse/FadingBlockRenderer;->access$202(Lcom/android/systemui/navigation/pulse/FadingBlockRenderer;I)I

    .line 249
    iget-object v1, p0, Lcom/android/systemui/navigation/pulse/FadingBlockRenderer$LegacySettingsObserver;->this$0:Lcom/android/systemui/navigation/pulse/FadingBlockRenderer;

    const/4 v2, 0x6

    invoke-static {v2, v7}, Ljava/lang/Math;->min(II)I

    move-result v2

    invoke-static {v12, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    invoke-static {v1, v2}, Lcom/android/systemui/navigation/pulse/FadingBlockRenderer;->access$402(Lcom/android/systemui/navigation/pulse/FadingBlockRenderer;I)I

    .line 251
    iget-object p0, p0, Lcom/android/systemui/navigation/pulse/FadingBlockRenderer$LegacySettingsObserver;->this$0:Lcom/android/systemui/navigation/pulse/FadingBlockRenderer;

    const-string v1, "pulse_smoothing_enabled"

    invoke-static {v0, v1, v10, v4}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    if-ne v0, v3, :cond_0

    goto :goto_0

    :cond_0
    move v3, v10

    :goto_0
    invoke-static {p0, v3}, Lcom/android/systemui/navigation/pulse/FadingBlockRenderer;->access$502(Lcom/android/systemui/navigation/pulse/FadingBlockRenderer;Z)Z

    return-void
.end method
