.class public final enum Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_FadeParams;
.super Ljava/lang/Enum;
.source "ParamIds.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "MVVEEffects_FadeParams"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_FadeParams;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum EFade_BlendFactor:Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_FadeParams;

.field public static final enum EFade_RGBColor:Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_FadeParams;

.field public static final enum EMaxFadeParams:Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_FadeParams;

.field private static final synthetic a:[Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_FadeParams;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 246
    new-instance v0, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_FadeParams;

    const-string v1, "EFade_RGBColor"

    invoke-direct {v0, v1, v2}, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_FadeParams;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_FadeParams;->EFade_RGBColor:Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_FadeParams;

    .line 248
    new-instance v0, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_FadeParams;

    const-string v1, "EFade_BlendFactor"

    invoke-direct {v0, v1, v3}, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_FadeParams;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_FadeParams;->EFade_BlendFactor:Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_FadeParams;

    .line 250
    new-instance v0, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_FadeParams;

    const-string v1, "EMaxFadeParams"

    invoke-direct {v0, v1, v4}, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_FadeParams;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_FadeParams;->EMaxFadeParams:Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_FadeParams;

    .line 244
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_FadeParams;

    sget-object v1, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_FadeParams;->EFade_RGBColor:Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_FadeParams;

    aput-object v1, v0, v2

    sget-object v1, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_FadeParams;->EFade_BlendFactor:Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_FadeParams;

    aput-object v1, v0, v3

    sget-object v1, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_FadeParams;->EMaxFadeParams:Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_FadeParams;

    aput-object v1, v0, v4

    sput-object v0, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_FadeParams;->a:[Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_FadeParams;

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
    .line 244
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_FadeParams;
    .locals 1

    .prologue
    .line 244
    const-class v0, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_FadeParams;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_FadeParams;

    return-object v0
.end method

.method public static values()[Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_FadeParams;
    .locals 1

    .prologue
    .line 244
    sget-object v0, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_FadeParams;->a:[Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_FadeParams;

    invoke-virtual {v0}, [Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_FadeParams;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_FadeParams;

    return-object v0
.end method
