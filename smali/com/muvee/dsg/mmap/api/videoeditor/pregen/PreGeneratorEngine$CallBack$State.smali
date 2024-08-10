.class public final enum Lcom/muvee/dsg/mmap/api/videoeditor/pregen/PreGeneratorEngine$CallBack$State;
.super Ljava/lang/Enum;
.source "PreGeneratorEngine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/muvee/dsg/mmap/api/videoeditor/pregen/PreGeneratorEngine$CallBack;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "State"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/muvee/dsg/mmap/api/videoeditor/pregen/PreGeneratorEngine$CallBack$State;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum POST:Lcom/muvee/dsg/mmap/api/videoeditor/pregen/PreGeneratorEngine$CallBack$State;

.field public static final enum POST_RENDER:Lcom/muvee/dsg/mmap/api/videoeditor/pregen/PreGeneratorEngine$CallBack$State;

.field public static final enum PRE:Lcom/muvee/dsg/mmap/api/videoeditor/pregen/PreGeneratorEngine$CallBack$State;

.field public static final enum PRE_RENDER:Lcom/muvee/dsg/mmap/api/videoeditor/pregen/PreGeneratorEngine$CallBack$State;

.field public static final enum PROCESS:Lcom/muvee/dsg/mmap/api/videoeditor/pregen/PreGeneratorEngine$CallBack$State;

.field private static final synthetic a:[Lcom/muvee/dsg/mmap/api/videoeditor/pregen/PreGeneratorEngine$CallBack$State;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 51
    new-instance v0, Lcom/muvee/dsg/mmap/api/videoeditor/pregen/PreGeneratorEngine$CallBack$State;

    const-string v1, "PRE"

    invoke-direct {v0, v1, v2}, Lcom/muvee/dsg/mmap/api/videoeditor/pregen/PreGeneratorEngine$CallBack$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/muvee/dsg/mmap/api/videoeditor/pregen/PreGeneratorEngine$CallBack$State;->PRE:Lcom/muvee/dsg/mmap/api/videoeditor/pregen/PreGeneratorEngine$CallBack$State;

    new-instance v0, Lcom/muvee/dsg/mmap/api/videoeditor/pregen/PreGeneratorEngine$CallBack$State;

    const-string v1, "POST"

    invoke-direct {v0, v1, v3}, Lcom/muvee/dsg/mmap/api/videoeditor/pregen/PreGeneratorEngine$CallBack$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/muvee/dsg/mmap/api/videoeditor/pregen/PreGeneratorEngine$CallBack$State;->POST:Lcom/muvee/dsg/mmap/api/videoeditor/pregen/PreGeneratorEngine$CallBack$State;

    new-instance v0, Lcom/muvee/dsg/mmap/api/videoeditor/pregen/PreGeneratorEngine$CallBack$State;

    const-string v1, "PRE_RENDER"

    invoke-direct {v0, v1, v4}, Lcom/muvee/dsg/mmap/api/videoeditor/pregen/PreGeneratorEngine$CallBack$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/muvee/dsg/mmap/api/videoeditor/pregen/PreGeneratorEngine$CallBack$State;->PRE_RENDER:Lcom/muvee/dsg/mmap/api/videoeditor/pregen/PreGeneratorEngine$CallBack$State;

    new-instance v0, Lcom/muvee/dsg/mmap/api/videoeditor/pregen/PreGeneratorEngine$CallBack$State;

    const-string v1, "POST_RENDER"

    invoke-direct {v0, v1, v5}, Lcom/muvee/dsg/mmap/api/videoeditor/pregen/PreGeneratorEngine$CallBack$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/muvee/dsg/mmap/api/videoeditor/pregen/PreGeneratorEngine$CallBack$State;->POST_RENDER:Lcom/muvee/dsg/mmap/api/videoeditor/pregen/PreGeneratorEngine$CallBack$State;

    new-instance v0, Lcom/muvee/dsg/mmap/api/videoeditor/pregen/PreGeneratorEngine$CallBack$State;

    const-string v1, "PROCESS"

    invoke-direct {v0, v1, v6}, Lcom/muvee/dsg/mmap/api/videoeditor/pregen/PreGeneratorEngine$CallBack$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/muvee/dsg/mmap/api/videoeditor/pregen/PreGeneratorEngine$CallBack$State;->PROCESS:Lcom/muvee/dsg/mmap/api/videoeditor/pregen/PreGeneratorEngine$CallBack$State;

    .line 50
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/muvee/dsg/mmap/api/videoeditor/pregen/PreGeneratorEngine$CallBack$State;

    sget-object v1, Lcom/muvee/dsg/mmap/api/videoeditor/pregen/PreGeneratorEngine$CallBack$State;->PRE:Lcom/muvee/dsg/mmap/api/videoeditor/pregen/PreGeneratorEngine$CallBack$State;

    aput-object v1, v0, v2

    sget-object v1, Lcom/muvee/dsg/mmap/api/videoeditor/pregen/PreGeneratorEngine$CallBack$State;->POST:Lcom/muvee/dsg/mmap/api/videoeditor/pregen/PreGeneratorEngine$CallBack$State;

    aput-object v1, v0, v3

    sget-object v1, Lcom/muvee/dsg/mmap/api/videoeditor/pregen/PreGeneratorEngine$CallBack$State;->PRE_RENDER:Lcom/muvee/dsg/mmap/api/videoeditor/pregen/PreGeneratorEngine$CallBack$State;

    aput-object v1, v0, v4

    sget-object v1, Lcom/muvee/dsg/mmap/api/videoeditor/pregen/PreGeneratorEngine$CallBack$State;->POST_RENDER:Lcom/muvee/dsg/mmap/api/videoeditor/pregen/PreGeneratorEngine$CallBack$State;

    aput-object v1, v0, v5

    sget-object v1, Lcom/muvee/dsg/mmap/api/videoeditor/pregen/PreGeneratorEngine$CallBack$State;->PROCESS:Lcom/muvee/dsg/mmap/api/videoeditor/pregen/PreGeneratorEngine$CallBack$State;

    aput-object v1, v0, v6

    sput-object v0, Lcom/muvee/dsg/mmap/api/videoeditor/pregen/PreGeneratorEngine$CallBack$State;->a:[Lcom/muvee/dsg/mmap/api/videoeditor/pregen/PreGeneratorEngine$CallBack$State;

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
    .line 50
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/muvee/dsg/mmap/api/videoeditor/pregen/PreGeneratorEngine$CallBack$State;
    .locals 1

    .prologue
    .line 50
    const-class v0, Lcom/muvee/dsg/mmap/api/videoeditor/pregen/PreGeneratorEngine$CallBack$State;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/muvee/dsg/mmap/api/videoeditor/pregen/PreGeneratorEngine$CallBack$State;

    return-object v0
.end method

.method public static values()[Lcom/muvee/dsg/mmap/api/videoeditor/pregen/PreGeneratorEngine$CallBack$State;
    .locals 1

    .prologue
    .line 50
    sget-object v0, Lcom/muvee/dsg/mmap/api/videoeditor/pregen/PreGeneratorEngine$CallBack$State;->a:[Lcom/muvee/dsg/mmap/api/videoeditor/pregen/PreGeneratorEngine$CallBack$State;

    invoke-virtual {v0}, [Lcom/muvee/dsg/mmap/api/videoeditor/pregen/PreGeneratorEngine$CallBack$State;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/muvee/dsg/mmap/api/videoeditor/pregen/PreGeneratorEngine$CallBack$State;

    return-object v0
.end method
