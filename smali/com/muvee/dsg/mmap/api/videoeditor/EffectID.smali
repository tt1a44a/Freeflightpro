.class public final enum Lcom/muvee/dsg/mmap/api/videoeditor/EffectID;
.super Ljava/lang/Enum;
.source "EffectID.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/muvee/dsg/mmap/api/videoeditor/EffectID;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum E_MVVE_BLUR_EFFECT:Lcom/muvee/dsg/mmap/api/videoeditor/EffectID;

.field public static final enum E_MVVE_COLOR_FILTER_EFFECT:Lcom/muvee/dsg/mmap/api/videoeditor/EffectID;

.field public static final enum E_MVVE_CROP_EFFECT:Lcom/muvee/dsg/mmap/api/videoeditor/EffectID;

.field public static final enum E_MVVE_CUBE_EFFECT:Lcom/muvee/dsg/mmap/api/videoeditor/EffectID;

.field public static final enum E_MVVE_FADE_EFFECT:Lcom/muvee/dsg/mmap/api/videoeditor/EffectID;

.field public static final enum E_MVVE_GRAPHIC_OVERLAY_EFFECT:Lcom/muvee/dsg/mmap/api/videoeditor/EffectID;

.field public static final enum E_MVVE_MASK_EFFECT:Lcom/muvee/dsg/mmap/api/videoeditor/EffectID;

.field public static final enum E_MVVE_MAX_EFFECTS:Lcom/muvee/dsg/mmap/api/videoeditor/EffectID;

.field public static final enum E_MVVE_MIRROR_EFFECT:Lcom/muvee/dsg/mmap/api/videoeditor/EffectID;

.field public static final enum E_MVVE_MULTILAYER_EFFECT:Lcom/muvee/dsg/mmap/api/videoeditor/EffectID;

.field public static final enum E_MVVE_MULTI_MEDIA_EFFECT:Lcom/muvee/dsg/mmap/api/videoeditor/EffectID;

.field public static final enum E_MVVE_NO_EFFECT:Lcom/muvee/dsg/mmap/api/videoeditor/EffectID;

.field public static final enum E_MVVE_PAGE_CURL_EFFECT:Lcom/muvee/dsg/mmap/api/videoeditor/EffectID;

.field public static final enum E_MVVE_SLIDE_EFFECT:Lcom/muvee/dsg/mmap/api/videoeditor/EffectID;

.field public static final enum E_MVVE_STRIPS_EFFECT:Lcom/muvee/dsg/mmap/api/videoeditor/EffectID;

.field public static final enum E_MVVE_SURFACE_FLIP_EFFECT:Lcom/muvee/dsg/mmap/api/videoeditor/EffectID;

.field public static final enum E_MVVE_TEXT_OVERLAY_EFFECT:Lcom/muvee/dsg/mmap/api/videoeditor/EffectID;

.field public static final enum E_MVVE_TILT_SHIFT_EFFECT:Lcom/muvee/dsg/mmap/api/videoeditor/EffectID;

.field private static final synthetic a:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectID;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 11
    new-instance v0, Lcom/muvee/dsg/mmap/api/videoeditor/EffectID;

    const-string v1, "E_MVVE_NO_EFFECT"

    invoke-direct {v0, v1, v3}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectID;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/muvee/dsg/mmap/api/videoeditor/EffectID;->E_MVVE_NO_EFFECT:Lcom/muvee/dsg/mmap/api/videoeditor/EffectID;

    .line 13
    new-instance v0, Lcom/muvee/dsg/mmap/api/videoeditor/EffectID;

    const-string v1, "E_MVVE_FADE_EFFECT"

    invoke-direct {v0, v1, v4}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectID;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/muvee/dsg/mmap/api/videoeditor/EffectID;->E_MVVE_FADE_EFFECT:Lcom/muvee/dsg/mmap/api/videoeditor/EffectID;

    .line 15
    new-instance v0, Lcom/muvee/dsg/mmap/api/videoeditor/EffectID;

    const-string v1, "E_MVVE_GRAPHIC_OVERLAY_EFFECT"

    invoke-direct {v0, v1, v5}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectID;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/muvee/dsg/mmap/api/videoeditor/EffectID;->E_MVVE_GRAPHIC_OVERLAY_EFFECT:Lcom/muvee/dsg/mmap/api/videoeditor/EffectID;

    .line 17
    new-instance v0, Lcom/muvee/dsg/mmap/api/videoeditor/EffectID;

    const-string v1, "E_MVVE_CROP_EFFECT"

    invoke-direct {v0, v1, v6}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectID;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/muvee/dsg/mmap/api/videoeditor/EffectID;->E_MVVE_CROP_EFFECT:Lcom/muvee/dsg/mmap/api/videoeditor/EffectID;

    .line 19
    new-instance v0, Lcom/muvee/dsg/mmap/api/videoeditor/EffectID;

    const-string v1, "E_MVVE_TEXT_OVERLAY_EFFECT"

    invoke-direct {v0, v1, v7}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectID;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/muvee/dsg/mmap/api/videoeditor/EffectID;->E_MVVE_TEXT_OVERLAY_EFFECT:Lcom/muvee/dsg/mmap/api/videoeditor/EffectID;

    .line 21
    new-instance v0, Lcom/muvee/dsg/mmap/api/videoeditor/EffectID;

    const-string v1, "E_MVVE_SURFACE_FLIP_EFFECT"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectID;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/muvee/dsg/mmap/api/videoeditor/EffectID;->E_MVVE_SURFACE_FLIP_EFFECT:Lcom/muvee/dsg/mmap/api/videoeditor/EffectID;

    .line 23
    new-instance v0, Lcom/muvee/dsg/mmap/api/videoeditor/EffectID;

    const-string v1, "E_MVVE_CUBE_EFFECT"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectID;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/muvee/dsg/mmap/api/videoeditor/EffectID;->E_MVVE_CUBE_EFFECT:Lcom/muvee/dsg/mmap/api/videoeditor/EffectID;

    .line 25
    new-instance v0, Lcom/muvee/dsg/mmap/api/videoeditor/EffectID;

    const-string v1, "E_MVVE_STRIPS_EFFECT"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectID;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/muvee/dsg/mmap/api/videoeditor/EffectID;->E_MVVE_STRIPS_EFFECT:Lcom/muvee/dsg/mmap/api/videoeditor/EffectID;

    .line 27
    new-instance v0, Lcom/muvee/dsg/mmap/api/videoeditor/EffectID;

    const-string v1, "E_MVVE_BLUR_EFFECT"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectID;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/muvee/dsg/mmap/api/videoeditor/EffectID;->E_MVVE_BLUR_EFFECT:Lcom/muvee/dsg/mmap/api/videoeditor/EffectID;

    .line 29
    new-instance v0, Lcom/muvee/dsg/mmap/api/videoeditor/EffectID;

    const-string v1, "E_MVVE_MULTILAYER_EFFECT"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectID;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/muvee/dsg/mmap/api/videoeditor/EffectID;->E_MVVE_MULTILAYER_EFFECT:Lcom/muvee/dsg/mmap/api/videoeditor/EffectID;

    .line 31
    new-instance v0, Lcom/muvee/dsg/mmap/api/videoeditor/EffectID;

    const-string v1, "E_MVVE_SLIDE_EFFECT"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectID;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/muvee/dsg/mmap/api/videoeditor/EffectID;->E_MVVE_SLIDE_EFFECT:Lcom/muvee/dsg/mmap/api/videoeditor/EffectID;

    .line 33
    new-instance v0, Lcom/muvee/dsg/mmap/api/videoeditor/EffectID;

    const-string v1, "E_MVVE_PAGE_CURL_EFFECT"

    const/16 v2, 0xb

    invoke-direct {v0, v1, v2}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectID;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/muvee/dsg/mmap/api/videoeditor/EffectID;->E_MVVE_PAGE_CURL_EFFECT:Lcom/muvee/dsg/mmap/api/videoeditor/EffectID;

    .line 35
    new-instance v0, Lcom/muvee/dsg/mmap/api/videoeditor/EffectID;

    const-string v1, "E_MVVE_COLOR_FILTER_EFFECT"

    const/16 v2, 0xc

    invoke-direct {v0, v1, v2}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectID;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/muvee/dsg/mmap/api/videoeditor/EffectID;->E_MVVE_COLOR_FILTER_EFFECT:Lcom/muvee/dsg/mmap/api/videoeditor/EffectID;

    .line 37
    new-instance v0, Lcom/muvee/dsg/mmap/api/videoeditor/EffectID;

    const-string v1, "E_MVVE_MIRROR_EFFECT"

    const/16 v2, 0xd

    invoke-direct {v0, v1, v2}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectID;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/muvee/dsg/mmap/api/videoeditor/EffectID;->E_MVVE_MIRROR_EFFECT:Lcom/muvee/dsg/mmap/api/videoeditor/EffectID;

    .line 39
    new-instance v0, Lcom/muvee/dsg/mmap/api/videoeditor/EffectID;

    const-string v1, "E_MVVE_TILT_SHIFT_EFFECT"

    const/16 v2, 0xe

    invoke-direct {v0, v1, v2}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectID;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/muvee/dsg/mmap/api/videoeditor/EffectID;->E_MVVE_TILT_SHIFT_EFFECT:Lcom/muvee/dsg/mmap/api/videoeditor/EffectID;

    .line 41
    new-instance v0, Lcom/muvee/dsg/mmap/api/videoeditor/EffectID;

    const-string v1, "E_MVVE_MASK_EFFECT"

    const/16 v2, 0xf

    invoke-direct {v0, v1, v2}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectID;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/muvee/dsg/mmap/api/videoeditor/EffectID;->E_MVVE_MASK_EFFECT:Lcom/muvee/dsg/mmap/api/videoeditor/EffectID;

    .line 43
    new-instance v0, Lcom/muvee/dsg/mmap/api/videoeditor/EffectID;

    const-string v1, "E_MVVE_MULTI_MEDIA_EFFECT"

    const/16 v2, 0x10

    invoke-direct {v0, v1, v2}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectID;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/muvee/dsg/mmap/api/videoeditor/EffectID;->E_MVVE_MULTI_MEDIA_EFFECT:Lcom/muvee/dsg/mmap/api/videoeditor/EffectID;

    .line 45
    new-instance v0, Lcom/muvee/dsg/mmap/api/videoeditor/EffectID;

    const-string v1, "E_MVVE_MAX_EFFECTS"

    const/16 v2, 0x11

    invoke-direct {v0, v1, v2}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectID;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/muvee/dsg/mmap/api/videoeditor/EffectID;->E_MVVE_MAX_EFFECTS:Lcom/muvee/dsg/mmap/api/videoeditor/EffectID;

    .line 9
    const/16 v0, 0x12

    new-array v0, v0, [Lcom/muvee/dsg/mmap/api/videoeditor/EffectID;

    sget-object v1, Lcom/muvee/dsg/mmap/api/videoeditor/EffectID;->E_MVVE_NO_EFFECT:Lcom/muvee/dsg/mmap/api/videoeditor/EffectID;

    aput-object v1, v0, v3

    sget-object v1, Lcom/muvee/dsg/mmap/api/videoeditor/EffectID;->E_MVVE_FADE_EFFECT:Lcom/muvee/dsg/mmap/api/videoeditor/EffectID;

    aput-object v1, v0, v4

    sget-object v1, Lcom/muvee/dsg/mmap/api/videoeditor/EffectID;->E_MVVE_GRAPHIC_OVERLAY_EFFECT:Lcom/muvee/dsg/mmap/api/videoeditor/EffectID;

    aput-object v1, v0, v5

    sget-object v1, Lcom/muvee/dsg/mmap/api/videoeditor/EffectID;->E_MVVE_CROP_EFFECT:Lcom/muvee/dsg/mmap/api/videoeditor/EffectID;

    aput-object v1, v0, v6

    sget-object v1, Lcom/muvee/dsg/mmap/api/videoeditor/EffectID;->E_MVVE_TEXT_OVERLAY_EFFECT:Lcom/muvee/dsg/mmap/api/videoeditor/EffectID;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectID;->E_MVVE_SURFACE_FLIP_EFFECT:Lcom/muvee/dsg/mmap/api/videoeditor/EffectID;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectID;->E_MVVE_CUBE_EFFECT:Lcom/muvee/dsg/mmap/api/videoeditor/EffectID;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectID;->E_MVVE_STRIPS_EFFECT:Lcom/muvee/dsg/mmap/api/videoeditor/EffectID;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectID;->E_MVVE_BLUR_EFFECT:Lcom/muvee/dsg/mmap/api/videoeditor/EffectID;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectID;->E_MVVE_MULTILAYER_EFFECT:Lcom/muvee/dsg/mmap/api/videoeditor/EffectID;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectID;->E_MVVE_SLIDE_EFFECT:Lcom/muvee/dsg/mmap/api/videoeditor/EffectID;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectID;->E_MVVE_PAGE_CURL_EFFECT:Lcom/muvee/dsg/mmap/api/videoeditor/EffectID;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectID;->E_MVVE_COLOR_FILTER_EFFECT:Lcom/muvee/dsg/mmap/api/videoeditor/EffectID;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    sget-object v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectID;->E_MVVE_MIRROR_EFFECT:Lcom/muvee/dsg/mmap/api/videoeditor/EffectID;

    aput-object v2, v0, v1

    const/16 v1, 0xe

    sget-object v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectID;->E_MVVE_TILT_SHIFT_EFFECT:Lcom/muvee/dsg/mmap/api/videoeditor/EffectID;

    aput-object v2, v0, v1

    const/16 v1, 0xf

    sget-object v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectID;->E_MVVE_MASK_EFFECT:Lcom/muvee/dsg/mmap/api/videoeditor/EffectID;

    aput-object v2, v0, v1

    const/16 v1, 0x10

    sget-object v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectID;->E_MVVE_MULTI_MEDIA_EFFECT:Lcom/muvee/dsg/mmap/api/videoeditor/EffectID;

    aput-object v2, v0, v1

    const/16 v1, 0x11

    sget-object v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectID;->E_MVVE_MAX_EFFECTS:Lcom/muvee/dsg/mmap/api/videoeditor/EffectID;

    aput-object v2, v0, v1

    sput-object v0, Lcom/muvee/dsg/mmap/api/videoeditor/EffectID;->a:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectID;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 9
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/muvee/dsg/mmap/api/videoeditor/EffectID;
    .locals 1

    .prologue
    .line 9
    const-class v0, Lcom/muvee/dsg/mmap/api/videoeditor/EffectID;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/muvee/dsg/mmap/api/videoeditor/EffectID;

    return-object v0
.end method

.method public static values()[Lcom/muvee/dsg/mmap/api/videoeditor/EffectID;
    .locals 1

    .prologue
    .line 9
    sget-object v0, Lcom/muvee/dsg/mmap/api/videoeditor/EffectID;->a:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectID;

    invoke-virtual {v0}, [Lcom/muvee/dsg/mmap/api/videoeditor/EffectID;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/muvee/dsg/mmap/api/videoeditor/EffectID;

    return-object v0
.end method
