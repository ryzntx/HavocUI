.class public Lcom/znxt/systemui/ResourceUtils;
.super Ljava/lang/Object;
.source "ResourceUtils.java"


# static fields
.field private static CONTEXT:Landroid/content/Context;

.field private static PACKAGE_NAME:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, ""

    sput-object v0, Lcom/znxt/systemui/ResourceUtils;->PACKAGE_NAME:Ljava/lang/String;

    const/4 v0, 0x0

    sput-object v0, Lcom/znxt/systemui/ResourceUtils;->CONTEXT:Landroid/content/Context;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getAndroidAnimResId(Ljava/lang/String;)I
    .locals 3

    .line 10
    sget-object v0, Lcom/znxt/systemui/ResourceUtils;->CONTEXT:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "anim"

    const-string v2, "android"

    invoke-virtual {v0, p0, v1, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static getAndroidArrayResId(Ljava/lang/String;)I
    .locals 3

    .line 14
    sget-object v0, Lcom/znxt/systemui/ResourceUtils;->CONTEXT:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "array"

    const-string v2, "android"

    invoke-virtual {v0, p0, v1, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static getAndroidBoolResId(Ljava/lang/String;)I
    .locals 3

    .line 18
    sget-object v0, Lcom/znxt/systemui/ResourceUtils;->CONTEXT:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "bool"

    const-string v2, "android"

    invoke-virtual {v0, p0, v1, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static getAndroidColorResId(Ljava/lang/String;)I
    .locals 3

    .line 22
    sget-object v0, Lcom/znxt/systemui/ResourceUtils;->CONTEXT:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "color"

    const-string v2, "android"

    invoke-virtual {v0, p0, v1, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static getAndroidDimenResId(Ljava/lang/String;)I
    .locals 3

    .line 26
    sget-object v0, Lcom/znxt/systemui/ResourceUtils;->CONTEXT:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "dimen"

    const-string v2, "android"

    invoke-virtual {v0, p0, v1, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static getAndroidIdResId(Ljava/lang/String;)I
    .locals 3

    .line 30
    sget-object v0, Lcom/znxt/systemui/ResourceUtils;->CONTEXT:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "id"

    const-string v2, "android"

    invoke-virtual {v0, p0, v1, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static getAndroidIntegerResId(Ljava/lang/String;)I
    .locals 3

    .line 34
    sget-object v0, Lcom/znxt/systemui/ResourceUtils;->CONTEXT:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "integer"

    const-string v2, "android"

    invoke-virtual {v0, p0, v1, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static getAndroidStringResId(Ljava/lang/String;)I
    .locals 3

    .line 38
    sget-object v0, Lcom/znxt/systemui/ResourceUtils;->CONTEXT:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "string"

    const-string v2, "android"

    invoke-virtual {v0, p0, v1, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static getAndroidStyleableResId(Ljava/lang/String;)I
    .locals 3

    .line 42
    sget-object v0, Lcom/znxt/systemui/ResourceUtils;->CONTEXT:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "styleable"

    const-string v2, "android"

    invoke-virtual {v0, p0, v1, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static getAnimResId(Ljava/lang/String;)I
    .locals 3

    .line 46
    sget-object v0, Lcom/znxt/systemui/ResourceUtils;->CONTEXT:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget-object v1, Lcom/znxt/systemui/ResourceUtils;->PACKAGE_NAME:Ljava/lang/String;

    const-string v2, "anim"

    invoke-virtual {v0, p0, v2, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static getArrayResId(Ljava/lang/String;)I
    .locals 3

    .line 50
    sget-object v0, Lcom/znxt/systemui/ResourceUtils;->CONTEXT:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget-object v1, Lcom/znxt/systemui/ResourceUtils;->PACKAGE_NAME:Ljava/lang/String;

    const-string v2, "array"

    invoke-virtual {v0, p0, v2, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static getBoolResId(Ljava/lang/String;)I
    .locals 3

    .line 54
    sget-object v0, Lcom/znxt/systemui/ResourceUtils;->CONTEXT:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget-object v1, Lcom/znxt/systemui/ResourceUtils;->PACKAGE_NAME:Ljava/lang/String;

    const-string v2, "bool"

    invoke-virtual {v0, p0, v2, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static getColorResId(Ljava/lang/String;)I
    .locals 3

    .line 58
    sget-object v0, Lcom/znxt/systemui/ResourceUtils;->CONTEXT:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget-object v1, Lcom/znxt/systemui/ResourceUtils;->PACKAGE_NAME:Ljava/lang/String;

    const-string v2, "color"

    invoke-virtual {v0, p0, v2, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static getContext()Landroid/content/Context;
    .locals 1

    .line 62
    sget-object v0, Lcom/znxt/systemui/ResourceUtils;->CONTEXT:Landroid/content/Context;

    return-object v0
.end method

.method public static getDimenResId(Ljava/lang/String;)I
    .locals 3

    .line 66
    sget-object v0, Lcom/znxt/systemui/ResourceUtils;->CONTEXT:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget-object v1, Lcom/znxt/systemui/ResourceUtils;->PACKAGE_NAME:Ljava/lang/String;

    const-string v2, "dimen"

    invoke-virtual {v0, p0, v2, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static getDrawableResId(Ljava/lang/String;)I
    .locals 3

    .line 70
    sget-object v0, Lcom/znxt/systemui/ResourceUtils;->CONTEXT:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget-object v1, Lcom/znxt/systemui/ResourceUtils;->PACKAGE_NAME:Ljava/lang/String;

    const-string v2, "drawable"

    invoke-virtual {v0, p0, v2, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static getIdResId(Ljava/lang/String;)I
    .locals 3

    .line 74
    sget-object v0, Lcom/znxt/systemui/ResourceUtils;->CONTEXT:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget-object v1, Lcom/znxt/systemui/ResourceUtils;->PACKAGE_NAME:Ljava/lang/String;

    const-string v2, "id"

    invoke-virtual {v0, p0, v2, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static getIntegerResId(Ljava/lang/String;)I
    .locals 3

    .line 78
    sget-object v0, Lcom/znxt/systemui/ResourceUtils;->CONTEXT:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget-object v1, Lcom/znxt/systemui/ResourceUtils;->PACKAGE_NAME:Ljava/lang/String;

    const-string v2, "integer"

    invoke-virtual {v0, p0, v2, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static getLayoutResId(Ljava/lang/String;)I
    .locals 3

    .line 82
    sget-object v0, Lcom/znxt/systemui/ResourceUtils;->CONTEXT:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget-object v1, Lcom/znxt/systemui/ResourceUtils;->PACKAGE_NAME:Ljava/lang/String;

    const-string v2, "layout"

    invoke-virtual {v0, p0, v2, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static getMenuResId(Ljava/lang/String;)I
    .locals 3

    .line 86
    sget-object v0, Lcom/znxt/systemui/ResourceUtils;->CONTEXT:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget-object v1, Lcom/znxt/systemui/ResourceUtils;->PACKAGE_NAME:Ljava/lang/String;

    const-string v2, "menu"

    invoke-virtual {v0, p0, v2, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static getPackageName()Ljava/lang/String;
    .locals 1

    .line 90
    sget-object v0, Lcom/znxt/systemui/ResourceUtils;->PACKAGE_NAME:Ljava/lang/String;

    return-object v0
.end method

.method public static getPluralsResId(Ljava/lang/String;)I
    .locals 3

    .line 106
    sget-object v0, Lcom/znxt/systemui/ResourceUtils;->CONTEXT:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget-object v1, Lcom/znxt/systemui/ResourceUtils;->PACKAGE_NAME:Ljava/lang/String;

    const-string v2, "plurals"

    invoke-virtual {v0, p0, v2, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static getStringResId(Ljava/lang/String;)I
    .locals 3

    .line 94
    sget-object v0, Lcom/znxt/systemui/ResourceUtils;->CONTEXT:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget-object v1, Lcom/znxt/systemui/ResourceUtils;->PACKAGE_NAME:Ljava/lang/String;

    const-string v2, "string"

    invoke-virtual {v0, p0, v2, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static getStyleableArrayResId(Ljava/lang/String;)[I
    .locals 4

    const/4 v0, 0x1

    new-array v0, v0, [I

    .line 98
    sget-object v1, Lcom/znxt/systemui/ResourceUtils;->CONTEXT:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget-object v2, Lcom/znxt/systemui/ResourceUtils;->PACKAGE_NAME:Ljava/lang/String;

    const-string v3, "styleable"

    invoke-virtual {v1, p0, v3, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    const/4 v1, 0x0

    aput p0, v0, v1

    return-object v0
.end method

.method public static getStyleableResId(Ljava/lang/String;)I
    .locals 3

    .line 102
    sget-object v0, Lcom/znxt/systemui/ResourceUtils;->CONTEXT:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget-object v1, Lcom/znxt/systemui/ResourceUtils;->PACKAGE_NAME:Ljava/lang/String;

    const-string v2, "styleable"

    invoke-virtual {v0, p0, v2, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static getXmlResId(Ljava/lang/String;)I
    .locals 3

    .line 110
    sget-object v0, Lcom/znxt/systemui/ResourceUtils;->CONTEXT:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget-object v1, Lcom/znxt/systemui/ResourceUtils;->PACKAGE_NAME:Ljava/lang/String;

    const-string v2, "xml"

    invoke-virtual {v0, p0, v2, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static init(Ljava/lang/String;Landroid/content/Context;)V
    .locals 0

    .line 114
    sput-object p0, Lcom/znxt/systemui/ResourceUtils;->PACKAGE_NAME:Ljava/lang/String;

    .line 115
    sput-object p1, Lcom/znxt/systemui/ResourceUtils;->CONTEXT:Landroid/content/Context;

    return-void
.end method
