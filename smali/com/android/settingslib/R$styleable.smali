.class public final Lcom/android/settingslib/R$styleable;
.super Ljava/lang/Object;
.source "R.java"


# static fields
.field public static final RestrictedPreference:[I

.field public static final RestrictedPreference_useAdminDisabledSummary:I = 0x0

.field public static final RestrictedPreference_userRestriction:I = 0x1

.field public static final RestrictedSwitchPreference:[I

.field public static final RestrictedSwitchPreference_restrictedSwitchSummary:I = 0x0

.field public static final RestrictedSwitchPreference_useAdditionalSummary:I = 0x1


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v0, 0x2

    new-array v1, v0, [I

    .line 43348
    fill-array-data v1, :array_0

    sput-object v1, Lcom/android/settingslib/R$styleable;->RestrictedPreference:[I

    new-array v0, v0, [I

    .line 43388
    fill-array-data v0, :array_1

    sput-object v0, Lcom/android/settingslib/R$styleable;->RestrictedSwitchPreference:[I

    return-void

    :array_0
    .array-data 4
        0x7f04035b
        0x7f04035e
    .end array-data

    :array_1
    .array-data 4
        0x7f0402ac
        0x7f04035a
    .end array-data
.end method
