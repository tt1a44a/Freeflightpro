.class public final enum Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MirrorParams;
.super Ljava/lang/Enum;
.source "ParamIds.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "MVVEEffects_MirrorParams"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MirrorParams;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum EMaxMirrorParams:Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MirrorParams;

.field public static final enum EMirror_StartPosition:Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MirrorParams;

.field public static final enum EMirror_Type:Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MirrorParams;

.field private static final synthetic a:[Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MirrorParams;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 482
    new-instance v0, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MirrorParams;

    const-string v1, "EMirror_StartPosition"

    invoke-direct {v0, v1, v2}, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MirrorParams;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MirrorParams;->EMirror_StartPosition:Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MirrorParams;

    .line 484
    new-instance v0, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MirrorParams;

    const-string v1, "EMirror_Type"

    invoke-direct {v0, v1, v3}, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MirrorParams;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MirrorParams;->EMirror_Type:Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MirrorParams;

    .line 486
    new-instance v0, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MirrorParams;

    const-string v1, "EMaxMirrorParams"

    invoke-direct {v0, v1, v4}, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MirrorParams;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MirrorParams;->EMaxMirrorParams:Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MirrorParams;

    .line 479
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MirrorParams;

    sget-object v1, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MirrorParams;->EMirror_StartPosition:Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MirrorParams;

    aput-object v1, v0, v2

    sget-object v1, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MirrorParams;->EMirror_Type:Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MirrorParams;

    aput-object v1, v0, v3

    sget-object v1, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MirrorParams;->EMaxMirrorParams:Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MirrorParams;

    aput-object v1, v0, v4

    sput-object v0, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MirrorParams;->a:[Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MirrorParams;

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
    .line 479
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MirrorParams;
    .locals 1

    .prologue
    .line 479
    const-class v0, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MirrorParams;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MirrorParams;

    return-object v0
.end method

.method public static values()[Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MirrorParams;
    .locals 1

    .prologue
    .line 479
    sget-object v0, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MirrorParams;->a:[Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MirrorParams;

    invoke-virtual {v0}, [Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MirrorParams;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MirrorParams;

    return-object v0
.end method
