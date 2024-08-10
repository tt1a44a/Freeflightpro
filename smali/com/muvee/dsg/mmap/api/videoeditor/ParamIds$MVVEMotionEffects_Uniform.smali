.class public final enum Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEMotionEffects_Uniform;
.super Ljava/lang/Enum;
.source "ParamIds.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "MVVEMotionEffects_Uniform"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEMotionEffects_Uniform;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum EMaxUniformParams:Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEMotionEffects_Uniform;

.field public static final enum EUniform_Speed:Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEMotionEffects_Uniform;

.field private static final synthetic a:[Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEMotionEffects_Uniform;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 471
    new-instance v0, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEMotionEffects_Uniform;

    const-string v1, "EUniform_Speed"

    invoke-direct {v0, v1, v2}, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEMotionEffects_Uniform;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEMotionEffects_Uniform;->EUniform_Speed:Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEMotionEffects_Uniform;

    .line 473
    new-instance v0, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEMotionEffects_Uniform;

    const-string v1, "EMaxUniformParams"

    invoke-direct {v0, v1, v3}, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEMotionEffects_Uniform;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEMotionEffects_Uniform;->EMaxUniformParams:Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEMotionEffects_Uniform;

    .line 467
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEMotionEffects_Uniform;

    sget-object v1, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEMotionEffects_Uniform;->EUniform_Speed:Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEMotionEffects_Uniform;

    aput-object v1, v0, v2

    sget-object v1, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEMotionEffects_Uniform;->EMaxUniformParams:Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEMotionEffects_Uniform;

    aput-object v1, v0, v3

    sput-object v0, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEMotionEffects_Uniform;->a:[Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEMotionEffects_Uniform;

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
    .line 467
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEMotionEffects_Uniform;
    .locals 1

    .prologue
    .line 467
    const-class v0, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEMotionEffects_Uniform;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEMotionEffects_Uniform;

    return-object v0
.end method

.method public static values()[Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEMotionEffects_Uniform;
    .locals 1

    .prologue
    .line 467
    sget-object v0, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEMotionEffects_Uniform;->a:[Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEMotionEffects_Uniform;

    invoke-virtual {v0}, [Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEMotionEffects_Uniform;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEMotionEffects_Uniform;

    return-object v0
.end method
