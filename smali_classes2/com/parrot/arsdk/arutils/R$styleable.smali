.class public final Lcom/parrot/arsdk/arutils/R$styleable;
.super Ljava/lang/Object;
.source "R.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/parrot/arsdk/arutils/R;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "styleable"
.end annotation


# static fields
.field public static final CoordinatorLayout:[I

.field public static final CoordinatorLayout_Layout:[I

.field public static final CoordinatorLayout_Layout_android_layout_gravity:I = 0x0

.field public static final CoordinatorLayout_Layout_layout_anchor:I = 0x1

.field public static final CoordinatorLayout_Layout_layout_anchorGravity:I = 0x2

.field public static final CoordinatorLayout_Layout_layout_behavior:I = 0x3

.field public static final CoordinatorLayout_Layout_layout_dodgeInsetEdges:I = 0x4

.field public static final CoordinatorLayout_Layout_layout_insetEdge:I = 0x5

.field public static final CoordinatorLayout_Layout_layout_keyline:I = 0x6

.field public static final CoordinatorLayout_keylines:I = 0x0

.field public static final CoordinatorLayout_statusBarBackground:I = 0x1

.field public static final FontFamily:[I

.field public static final FontFamilyFont:[I

.field public static final FontFamilyFont_android_font:I = 0x0

.field public static final FontFamilyFont_android_fontStyle:I = 0x2

.field public static final FontFamilyFont_android_fontWeight:I = 0x1

.field public static final FontFamilyFont_font:I = 0x3

.field public static final FontFamilyFont_fontStyle:I = 0x4

.field public static final FontFamilyFont_fontWeight:I = 0x5

.field public static final FontFamily_fontProviderAuthority:I = 0x0

.field public static final FontFamily_fontProviderCerts:I = 0x1

.field public static final FontFamily_fontProviderFetchStrategy:I = 0x2

.field public static final FontFamily_fontProviderFetchTimeout:I = 0x3

.field public static final FontFamily_fontProviderPackage:I = 0x4

.field public static final FontFamily_fontProviderQuery:I = 0x5


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x6

    .line 158
    const/4 v0, 0x2

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/parrot/arsdk/arutils/R$styleable;->CoordinatorLayout:[I

    .line 161
    const/4 v0, 0x7

    new-array v0, v0, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/parrot/arsdk/arutils/R$styleable;->CoordinatorLayout_Layout:[I

    .line 169
    new-array v0, v1, [I

    fill-array-data v0, :array_2

    sput-object v0, Lcom/parrot/arsdk/arutils/R$styleable;->FontFamily:[I

    .line 176
    new-array v0, v1, [I

    fill-array-data v0, :array_3

    sput-object v0, Lcom/parrot/arsdk/arutils/R$styleable;->FontFamilyFont:[I

    return-void

    .line 158
    :array_0
    .array-data 4
        0x7f0300e6
        0x7f03019c
    .end array-data

    .line 161
    :array_1
    .array-data 4
        0x10100b3
        0x7f0300ed
        0x7f0300ee
        0x7f0300f0
        0x7f03011c
        0x7f030126
        0x7f030127
    .end array-data

    .line 169
    :array_2
    .array-data 4
        0x7f0300b2
        0x7f0300b3
        0x7f0300b4
        0x7f0300b5
        0x7f0300b6
        0x7f0300b7
    .end array-data

    .line 176
    :array_3
    .array-data 4
        0x1010532
        0x1010533
        0x101053f
        0x7f0300b0
        0x7f0300b8
        0x7f0300b9
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 157
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
