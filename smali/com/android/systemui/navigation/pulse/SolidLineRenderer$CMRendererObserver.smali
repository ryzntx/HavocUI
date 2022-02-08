.class Lcom/android/systemui/navigation/pulse/SolidLineRenderer$CMRendererObserver;
.super Landroid/database/ContentObserver;
.source "SolidLineRenderer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/navigation/pulse/SolidLineRenderer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CMRendererObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/navigation/pulse/SolidLineRenderer;


# direct methods
.method public constructor <init>(Lcom/android/systemui/navigation/pulse/SolidLineRenderer;Landroid/os/Handler;)V
    .locals 0

    .line 213
    iput-object p1, p0, Lcom/android/systemui/navigation/pulse/SolidLineRenderer$CMRendererObserver;->this$0:Lcom/android/systemui/navigation/pulse/SolidLineRenderer;

    .line 214
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 215
    invoke-virtual {p0}, Lcom/android/systemui/navigation/pulse/SolidLineRenderer$CMRendererObserver;->register()V

    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .locals 0

    .line 237
    invoke-virtual {p0}, Lcom/android/systemui/navigation/pulse/SolidLineRenderer$CMRendererObserver;->updateSettings()V

    return-void
.end method

.method register()V
    .locals 4

    .line 219
    iget-object v0, p0, Lcom/android/systemui/navigation/pulse/SolidLineRenderer$CMRendererObserver;->this$0:Lcom/android/systemui/navigation/pulse/SolidLineRenderer;

    iget-object v0, v0, Lcom/android/systemui/navigation/pulse/Renderer;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "pulse_solid_fudge_factor"

    .line 221
    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, -0x1

    .line 220
    invoke-virtual {v0, v1, v2, p0, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    const-string v1, "pulse_solid_units_count"

    .line 224
    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 223
    invoke-virtual {v0, v1, v2, p0, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    const-string v1, "pulse_solid_units_opacity"

    .line 227
    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 226
    invoke-virtual {v0, v1, v2, p0, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    const-string v1, "pulse_smoothing_enabled"

    .line 230
    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 229
    invoke-virtual {v0, v1, v2, p0, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    return-void
.end method

.method public updateSettings()V
    .locals 6

    .line 241
    iget-object v0, p0, Lcom/android/systemui/navigation/pulse/SolidLineRenderer$CMRendererObserver;->this$0:Lcom/android/systemui/navigation/pulse/SolidLineRenderer;

    iget-object v0, v0, Lcom/android/systemui/navigation/pulse/Renderer;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 244
    iget-object v1, p0, Lcom/android/systemui/navigation/pulse/SolidLineRenderer$CMRendererObserver;->this$0:Lcom/android/systemui/navigation/pulse/SolidLineRenderer;

    const-string v2, "pulse_solid_fudge_factor"

    const/4 v3, 0x5

    const/4 v4, -0x2

    invoke-static {v0, v2, v3, v4}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v2

    invoke-static {v1, v2}, Lcom/android/systemui/navigation/pulse/SolidLineRenderer;->access$002(Lcom/android/systemui/navigation/pulse/SolidLineRenderer;I)I

    .line 247
    iget-object v1, p0, Lcom/android/systemui/navigation/pulse/SolidLineRenderer$CMRendererObserver;->this$0:Lcom/android/systemui/navigation/pulse/SolidLineRenderer;

    const-string v2, "pulse_smoothing_enabled"

    const/4 v3, 0x0

    invoke-static {v0, v2, v3, v4}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v2

    const/4 v5, 0x1

    if-ne v2, v5, :cond_0

    goto :goto_0

    :cond_0
    move v5, v3

    :goto_0
    invoke-static {v1, v5}, Lcom/android/systemui/navigation/pulse/SolidLineRenderer;->access$102(Lcom/android/systemui/navigation/pulse/SolidLineRenderer;Z)Z

    const/16 v1, 0x40

    const-string v2, "pulse_solid_units_count"

    .line 250
    invoke-static {v0, v2, v1, v4}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    .line 253
    iget-object v2, p0, Lcom/android/systemui/navigation/pulse/SolidLineRenderer$CMRendererObserver;->this$0:Lcom/android/systemui/navigation/pulse/SolidLineRenderer;

    invoke-static {v2}, Lcom/android/systemui/navigation/pulse/SolidLineRenderer;->access$200(Lcom/android/systemui/navigation/pulse/SolidLineRenderer;)I

    move-result v2

    if-eq v1, v2, :cond_2

    .line 254
    iget-object v2, p0, Lcom/android/systemui/navigation/pulse/SolidLineRenderer$CMRendererObserver;->this$0:Lcom/android/systemui/navigation/pulse/SolidLineRenderer;

    invoke-static {v2}, Lcom/android/systemui/navigation/pulse/SolidLineRenderer;->access$200(Lcom/android/systemui/navigation/pulse/SolidLineRenderer;)I

    move-result v5

    invoke-static {v2, v5}, Lcom/android/systemui/navigation/pulse/SolidLineRenderer;->access$300(Lcom/android/systemui/navigation/pulse/SolidLineRenderer;I)V

    .line 255
    iget-object v2, p0, Lcom/android/systemui/navigation/pulse/SolidLineRenderer$CMRendererObserver;->this$0:Lcom/android/systemui/navigation/pulse/SolidLineRenderer;

    invoke-static {v2, v1}, Lcom/android/systemui/navigation/pulse/SolidLineRenderer;->access$202(Lcom/android/systemui/navigation/pulse/SolidLineRenderer;I)I

    .line 256
    iget-object v1, p0, Lcom/android/systemui/navigation/pulse/SolidLineRenderer$CMRendererObserver;->this$0:Lcom/android/systemui/navigation/pulse/SolidLineRenderer;

    invoke-static {v1}, Lcom/android/systemui/navigation/pulse/SolidLineRenderer;->access$200(Lcom/android/systemui/navigation/pulse/SolidLineRenderer;)I

    move-result v2

    mul-int/lit8 v2, v2, 0x4

    new-array v2, v2, [F

    invoke-static {v1, v2}, Lcom/android/systemui/navigation/pulse/SolidLineRenderer;->access$402(Lcom/android/systemui/navigation/pulse/SolidLineRenderer;[F)[F

    .line 257
    iget-object v1, p0, Lcom/android/systemui/navigation/pulse/SolidLineRenderer$CMRendererObserver;->this$0:Lcom/android/systemui/navigation/pulse/SolidLineRenderer;

    invoke-static {v1}, Lcom/android/systemui/navigation/pulse/SolidLineRenderer;->access$100(Lcom/android/systemui/navigation/pulse/SolidLineRenderer;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 258
    iget-object v1, p0, Lcom/android/systemui/navigation/pulse/SolidLineRenderer$CMRendererObserver;->this$0:Lcom/android/systemui/navigation/pulse/SolidLineRenderer;

    invoke-static {v1}, Lcom/android/systemui/navigation/pulse/SolidLineRenderer;->access$500(Lcom/android/systemui/navigation/pulse/SolidLineRenderer;)V

    .line 260
    :cond_1
    iget-object v1, p0, Lcom/android/systemui/navigation/pulse/SolidLineRenderer$CMRendererObserver;->this$0:Lcom/android/systemui/navigation/pulse/SolidLineRenderer;

    invoke-virtual {v1, v3, v3, v3, v3}, Lcom/android/systemui/navigation/pulse/SolidLineRenderer;->onSizeChanged(IIII)V

    .line 263
    :cond_2
    iget-object v1, p0, Lcom/android/systemui/navigation/pulse/SolidLineRenderer$CMRendererObserver;->this$0:Lcom/android/systemui/navigation/pulse/SolidLineRenderer;

    invoke-static {v1}, Lcom/android/systemui/navigation/pulse/SolidLineRenderer;->access$100(Lcom/android/systemui/navigation/pulse/SolidLineRenderer;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 264
    iget-object v1, p0, Lcom/android/systemui/navigation/pulse/SolidLineRenderer$CMRendererObserver;->this$0:Lcom/android/systemui/navigation/pulse/SolidLineRenderer;

    invoke-static {v1}, Lcom/android/systemui/navigation/pulse/SolidLineRenderer;->access$600(Lcom/android/systemui/navigation/pulse/SolidLineRenderer;)[Lcom/android/systemui/navigation/pulse/FFTAverage;

    move-result-object v1

    if-nez v1, :cond_4

    .line 265
    iget-object v1, p0, Lcom/android/systemui/navigation/pulse/SolidLineRenderer$CMRendererObserver;->this$0:Lcom/android/systemui/navigation/pulse/SolidLineRenderer;

    invoke-static {v1}, Lcom/android/systemui/navigation/pulse/SolidLineRenderer;->access$500(Lcom/android/systemui/navigation/pulse/SolidLineRenderer;)V

    goto :goto_1

    .line 268
    :cond_3
    iget-object v1, p0, Lcom/android/systemui/navigation/pulse/SolidLineRenderer$CMRendererObserver;->this$0:Lcom/android/systemui/navigation/pulse/SolidLineRenderer;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/android/systemui/navigation/pulse/SolidLineRenderer;->access$602(Lcom/android/systemui/navigation/pulse/SolidLineRenderer;[Lcom/android/systemui/navigation/pulse/FFTAverage;)[Lcom/android/systemui/navigation/pulse/FFTAverage;

    .line 271
    :cond_4
    :goto_1
    iget-object v1, p0, Lcom/android/systemui/navigation/pulse/SolidLineRenderer$CMRendererObserver;->this$0:Lcom/android/systemui/navigation/pulse/SolidLineRenderer;

    const/16 v2, 0xc8

    const-string v3, "pulse_solid_units_opacity"

    invoke-static {v0, v3, v2, v4}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    invoke-static {v1, v0}, Lcom/android/systemui/navigation/pulse/SolidLineRenderer;->access$702(Lcom/android/systemui/navigation/pulse/SolidLineRenderer;I)I

    .line 275
    iget-object v0, p0, Lcom/android/systemui/navigation/pulse/SolidLineRenderer$CMRendererObserver;->this$0:Lcom/android/systemui/navigation/pulse/SolidLineRenderer;

    invoke-static {v0}, Lcom/android/systemui/navigation/pulse/SolidLineRenderer;->access$900(Lcom/android/systemui/navigation/pulse/SolidLineRenderer;)Landroid/graphics/Paint;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/navigation/pulse/SolidLineRenderer$CMRendererObserver;->this$0:Lcom/android/systemui/navigation/pulse/SolidLineRenderer;

    invoke-static {v1}, Lcom/android/systemui/navigation/pulse/SolidLineRenderer;->access$800(Lcom/android/systemui/navigation/pulse/SolidLineRenderer;)I

    move-result v1

    iget-object p0, p0, Lcom/android/systemui/navigation/pulse/SolidLineRenderer$CMRendererObserver;->this$0:Lcom/android/systemui/navigation/pulse/SolidLineRenderer;

    invoke-static {p0}, Lcom/android/systemui/navigation/pulse/SolidLineRenderer;->access$700(Lcom/android/systemui/navigation/pulse/SolidLineRenderer;)I

    move-result p0

    invoke-static {v1, p0}, Landroidx/core/graphics/ColorUtils;->setAlphaComponent(II)I

    move-result p0

    invoke-virtual {v0, p0}, Landroid/graphics/Paint;->setColor(I)V

    return-void
.end method
