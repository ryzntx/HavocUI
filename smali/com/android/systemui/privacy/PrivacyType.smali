.class public final enum Lcom/android/systemui/privacy/PrivacyType;
.super Ljava/lang/Enum;
.source "PrivacyItem.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/systemui/privacy/PrivacyType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/systemui/privacy/PrivacyType;

.field public static final enum TYPE_CAMERA:Lcom/android/systemui/privacy/PrivacyType;

.field public static final enum TYPE_LOCATION:Lcom/android/systemui/privacy/PrivacyType;

.field public static final enum TYPE_MICROPHONE:Lcom/android/systemui/privacy/PrivacyType;


# instance fields
.field private final iconId:I

.field private final nameId:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/android/systemui/privacy/PrivacyType;

    new-instance v1, Lcom/android/systemui/privacy/PrivacyType;

    .line 24
    sget v2, Lcom/android/systemui/R$string;->privacy_type_camera:I

    const-string v3, "TYPE_CAMERA"

    const/4 v4, 0x0

    const v5, 0x1080662

    invoke-direct {v1, v3, v4, v2, v5}, Lcom/android/systemui/privacy/PrivacyType;-><init>(Ljava/lang/String;III)V

    sput-object v1, Lcom/android/systemui/privacy/PrivacyType;->TYPE_CAMERA:Lcom/android/systemui/privacy/PrivacyType;

    aput-object v1, v0, v4

    new-instance v1, Lcom/android/systemui/privacy/PrivacyType;

    .line 26
    sget v2, Lcom/android/systemui/R$string;->privacy_type_microphone:I

    const-string v3, "TYPE_MICROPHONE"

    const/4 v4, 0x1

    const v5, 0x1080668

    invoke-direct {v1, v3, v4, v2, v5}, Lcom/android/systemui/privacy/PrivacyType;-><init>(Ljava/lang/String;III)V

    sput-object v1, Lcom/android/systemui/privacy/PrivacyType;->TYPE_MICROPHONE:Lcom/android/systemui/privacy/PrivacyType;

    aput-object v1, v0, v4

    new-instance v1, Lcom/android/systemui/privacy/PrivacyType;

    .line 28
    sget v2, Lcom/android/systemui/R$string;->privacy_type_location:I

    const-string v3, "TYPE_LOCATION"

    const/4 v4, 0x2

    const v5, 0x1080667

    invoke-direct {v1, v3, v4, v2, v5}, Lcom/android/systemui/privacy/PrivacyType;-><init>(Ljava/lang/String;III)V

    sput-object v1, Lcom/android/systemui/privacy/PrivacyType;->TYPE_LOCATION:Lcom/android/systemui/privacy/PrivacyType;

    aput-object v1, v0, v4

    sput-object v0, Lcom/android/systemui/privacy/PrivacyType;->$VALUES:[Lcom/android/systemui/privacy/PrivacyType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;III)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)V"
        }
    .end annotation

    .line 22
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/android/systemui/privacy/PrivacyType;->nameId:I

    iput p4, p0, Lcom/android/systemui/privacy/PrivacyType;->iconId:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/systemui/privacy/PrivacyType;
    .locals 1

    const-class v0, Lcom/android/systemui/privacy/PrivacyType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/privacy/PrivacyType;

    return-object p0
.end method

.method public static values()[Lcom/android/systemui/privacy/PrivacyType;
    .locals 1

    sget-object v0, Lcom/android/systemui/privacy/PrivacyType;->$VALUES:[Lcom/android/systemui/privacy/PrivacyType;

    invoke-virtual {v0}, [Lcom/android/systemui/privacy/PrivacyType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/systemui/privacy/PrivacyType;

    return-object v0
.end method


# virtual methods
.method public final getIcon(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 33
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget p0, p0, Lcom/android/systemui/privacy/PrivacyType;->iconId:I

    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object p1

    invoke-virtual {v0, p0, p1}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0
.end method

.method public final getName(Landroid/content/Context;)Ljava/lang/String;
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 31
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    iget p0, p0, Lcom/android/systemui/privacy/PrivacyType;->nameId:I

    invoke-virtual {p1, p0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final getNameId()I
    .locals 0

    .line 22
    iget p0, p0, Lcom/android/systemui/privacy/PrivacyType;->nameId:I

    return p0
.end method
