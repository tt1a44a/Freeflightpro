.class public final enum Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_ColorFilterParams;
.super Ljava/lang/Enum;
.source "ParamIds.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "MVVEEffects_ColorFilterParams"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_ColorFilterParams;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum EColor_BrightnessLevel:Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_ColorFilterParams;

.field public static final enum EColor_ContrastLevel:Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_ColorFilterParams;

.field public static final enum EColor_FilterType:Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_ColorFilterParams;

.field public static final enum EColor_HighlightColor:Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_ColorFilterParams;

.field public static final enum EColor_HueShiftDegrees:Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_ColorFilterParams;

.field public static final enum EColor_IsSourceFx:Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_ColorFilterParams;

.field public static final enum EColor_LookupGraphicID:Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_ColorFilterParams;

.field public static final enum EColor_MidToneColor:Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_ColorFilterParams;

.field public static final enum EColor_Opacity:Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_ColorFilterParams;

.field public static final enum EColor_ShadowColor:Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_ColorFilterParams;

.field public static final enum EColor_StepPosition:Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_ColorFilterParams;

.field public static final enum EColor_TintColor:Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_ColorFilterParams;

.field public static final enum EMaxColorFilterParams:Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_ColorFilterParams;

.field private static final synthetic a:[Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_ColorFilterParams;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 433
    new-instance v0, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_ColorFilterParams;

    const-string v1, "EColor_FilterType"

    invoke-direct {v0, v1, v3}, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_ColorFilterParams;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_ColorFilterParams;->EColor_FilterType:Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_ColorFilterParams;

    .line 435
    new-instance v0, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_ColorFilterParams;

    const-string v1, "EColor_IsSourceFx"

    invoke-direct {v0, v1, v4}, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_ColorFilterParams;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_ColorFilterParams;->EColor_IsSourceFx:Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_ColorFilterParams;

    .line 437
    new-instance v0, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_ColorFilterParams;

    const-string v1, "EColor_TintColor"

    invoke-direct {v0, v1, v5}, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_ColorFilterParams;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_ColorFilterParams;->EColor_TintColor:Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_ColorFilterParams;

    .line 439
    new-instance v0, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_ColorFilterParams;

    const-string v1, "EColor_ShadowColor"

    invoke-direct {v0, v1, v6}, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_ColorFilterParams;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_ColorFilterParams;->EColor_ShadowColor:Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_ColorFilterParams;

    .line 441
    new-instance v0, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_ColorFilterParams;

    const-string v1, "EColor_MidToneColor"

    invoke-direct {v0, v1, v7}, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_ColorFilterParams;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_ColorFilterParams;->EColor_MidToneColor:Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_ColorFilterParams;

    .line 443
    new-instance v0, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_ColorFilterParams;

    const-string v1, "EColor_HighlightColor"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_ColorFilterParams;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_ColorFilterParams;->EColor_HighlightColor:Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_ColorFilterParams;

    .line 445
    new-instance v0, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_ColorFilterParams;

    const-string v1, "EColor_StepPosition"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_ColorFilterParams;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_ColorFilterParams;->EColor_StepPosition:Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_ColorFilterParams;

    .line 448
    new-instance v0, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_ColorFilterParams;

    const-string v1, "EColor_Opacity"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_ColorFilterParams;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_ColorFilterParams;->EColor_Opacity:Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_ColorFilterParams;

    .line 450
    new-instance v0, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_ColorFilterParams;

    const-string v1, "EColor_HueShiftDegrees"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_ColorFilterParams;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_ColorFilterParams;->EColor_HueShiftDegrees:Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_ColorFilterParams;

    .line 453
    new-instance v0, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_ColorFilterParams;

    const-string v1, "EColor_BrightnessLevel"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_ColorFilterParams;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_ColorFilterParams;->EColor_BrightnessLevel:Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_ColorFilterParams;

    .line 456
    new-instance v0, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_ColorFilterParams;

    const-string v1, "EColor_ContrastLevel"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_ColorFilterParams;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_ColorFilterParams;->EColor_ContrastLevel:Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_ColorFilterParams;

    .line 458
    new-instance v0, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_ColorFilterParams;

    const-string v1, "EColor_LookupGraphicID"

    const/16 v2, 0xb

    invoke-direct {v0, v1, v2}, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_ColorFilterParams;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_ColorFilterParams;->EColor_LookupGraphicID:Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_ColorFilterParams;

    .line 460
    new-instance v0, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_ColorFilterParams;

    const-string v1, "EMaxColorFilterParams"

    const/16 v2, 0xc

    invoke-direct {v0, v1, v2}, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_ColorFilterParams;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_ColorFilterParams;->EMaxColorFilterParams:Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_ColorFilterParams;

    .line 430
    const/16 v0, 0xd

    new-array v0, v0, [Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_ColorFilterParams;

    sget-object v1, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_ColorFilterParams;->EColor_FilterType:Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_ColorFilterParams;

    aput-object v1, v0, v3

    sget-object v1, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_ColorFilterParams;->EColor_IsSourceFx:Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_ColorFilterParams;

    aput-object v1, v0, v4

    sget-object v1, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_ColorFilterParams;->EColor_TintColor:Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_ColorFilterParams;

    aput-object v1, v0, v5

    sget-object v1, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_ColorFilterParams;->EColor_ShadowColor:Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_ColorFilterParams;

    aput-object v1, v0, v6

    sget-object v1, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_ColorFilterParams;->EColor_MidToneColor:Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_ColorFilterParams;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_ColorFilterParams;->EColor_HighlightColor:Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_ColorFilterParams;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_ColorFilterParams;->EColor_StepPosition:Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_ColorFilterParams;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_ColorFilterParams;->EColor_Opacity:Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_ColorFilterParams;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_ColorFilterParams;->EColor_HueShiftDegrees:Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_ColorFilterParams;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_ColorFilterParams;->EColor_BrightnessLevel:Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_ColorFilterParams;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_ColorFilterParams;->EColor_ContrastLevel:Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_ColorFilterParams;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_ColorFilterParams;->EColor_LookupGraphicID:Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_ColorFilterParams;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_ColorFilterParams;->EMaxColorFilterParams:Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_ColorFilterParams;

    aput-object v2, v0, v1

    sput-object v0, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_ColorFilterParams;->a:[Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_ColorFilterParams;

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
    .line 430
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_ColorFilterParams;
    .locals 1

    .prologue
    .line 430
    const-class v0, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_ColorFilterParams;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_ColorFilterParams;

    return-object v0
.end method

.method public static values()[Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_ColorFilterParams;
    .locals 1

    .prologue
    .line 430
    sget-object v0, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_ColorFilterParams;->a:[Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_ColorFilterParams;

    invoke-virtual {v0}, [Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_ColorFilterParams;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_ColorFilterParams;

    return-object v0
.end method
