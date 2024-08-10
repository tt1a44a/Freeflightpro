.class public final enum Lcom/muvee/dsg/mmap/api/videoeditor/VideoEditor$State;
.super Ljava/lang/Enum;
.source "VideoEditor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/muvee/dsg/mmap/api/videoeditor/VideoEditor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "State"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/muvee/dsg/mmap/api/videoeditor/VideoEditor$State;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum BUILT:Lcom/muvee/dsg/mmap/api/videoeditor/VideoEditor$State;

.field public static final enum INITIALIZED:Lcom/muvee/dsg/mmap/api/videoeditor/VideoEditor$State;

.field public static final enum PLAYING:Lcom/muvee/dsg/mmap/api/videoeditor/VideoEditor$State;

.field public static final enum READLY:Lcom/muvee/dsg/mmap/api/videoeditor/VideoEditor$State;

.field public static final enum SAVING:Lcom/muvee/dsg/mmap/api/videoeditor/VideoEditor$State;

.field public static final enum UN_INITIALIZED:Lcom/muvee/dsg/mmap/api/videoeditor/VideoEditor$State;

.field private static final synthetic a:[Lcom/muvee/dsg/mmap/api/videoeditor/VideoEditor$State;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 114
    new-instance v0, Lcom/muvee/dsg/mmap/api/videoeditor/VideoEditor$State;

    const-string v1, "UN_INITIALIZED"

    invoke-direct {v0, v1, v3}, Lcom/muvee/dsg/mmap/api/videoeditor/VideoEditor$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/muvee/dsg/mmap/api/videoeditor/VideoEditor$State;->UN_INITIALIZED:Lcom/muvee/dsg/mmap/api/videoeditor/VideoEditor$State;

    new-instance v0, Lcom/muvee/dsg/mmap/api/videoeditor/VideoEditor$State;

    const-string v1, "INITIALIZED"

    invoke-direct {v0, v1, v4}, Lcom/muvee/dsg/mmap/api/videoeditor/VideoEditor$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/muvee/dsg/mmap/api/videoeditor/VideoEditor$State;->INITIALIZED:Lcom/muvee/dsg/mmap/api/videoeditor/VideoEditor$State;

    new-instance v0, Lcom/muvee/dsg/mmap/api/videoeditor/VideoEditor$State;

    const-string v1, "READLY"

    invoke-direct {v0, v1, v5}, Lcom/muvee/dsg/mmap/api/videoeditor/VideoEditor$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/muvee/dsg/mmap/api/videoeditor/VideoEditor$State;->READLY:Lcom/muvee/dsg/mmap/api/videoeditor/VideoEditor$State;

    new-instance v0, Lcom/muvee/dsg/mmap/api/videoeditor/VideoEditor$State;

    const-string v1, "BUILT"

    invoke-direct {v0, v1, v6}, Lcom/muvee/dsg/mmap/api/videoeditor/VideoEditor$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/muvee/dsg/mmap/api/videoeditor/VideoEditor$State;->BUILT:Lcom/muvee/dsg/mmap/api/videoeditor/VideoEditor$State;

    new-instance v0, Lcom/muvee/dsg/mmap/api/videoeditor/VideoEditor$State;

    const-string v1, "PLAYING"

    invoke-direct {v0, v1, v7}, Lcom/muvee/dsg/mmap/api/videoeditor/VideoEditor$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/muvee/dsg/mmap/api/videoeditor/VideoEditor$State;->PLAYING:Lcom/muvee/dsg/mmap/api/videoeditor/VideoEditor$State;

    new-instance v0, Lcom/muvee/dsg/mmap/api/videoeditor/VideoEditor$State;

    const-string v1, "SAVING"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/muvee/dsg/mmap/api/videoeditor/VideoEditor$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/muvee/dsg/mmap/api/videoeditor/VideoEditor$State;->SAVING:Lcom/muvee/dsg/mmap/api/videoeditor/VideoEditor$State;

    .line 113
    const/4 v0, 0x6

    new-array v0, v0, [Lcom/muvee/dsg/mmap/api/videoeditor/VideoEditor$State;

    sget-object v1, Lcom/muvee/dsg/mmap/api/videoeditor/VideoEditor$State;->UN_INITIALIZED:Lcom/muvee/dsg/mmap/api/videoeditor/VideoEditor$State;

    aput-object v1, v0, v3

    sget-object v1, Lcom/muvee/dsg/mmap/api/videoeditor/VideoEditor$State;->INITIALIZED:Lcom/muvee/dsg/mmap/api/videoeditor/VideoEditor$State;

    aput-object v1, v0, v4

    sget-object v1, Lcom/muvee/dsg/mmap/api/videoeditor/VideoEditor$State;->READLY:Lcom/muvee/dsg/mmap/api/videoeditor/VideoEditor$State;

    aput-object v1, v0, v5

    sget-object v1, Lcom/muvee/dsg/mmap/api/videoeditor/VideoEditor$State;->BUILT:Lcom/muvee/dsg/mmap/api/videoeditor/VideoEditor$State;

    aput-object v1, v0, v6

    sget-object v1, Lcom/muvee/dsg/mmap/api/videoeditor/VideoEditor$State;->PLAYING:Lcom/muvee/dsg/mmap/api/videoeditor/VideoEditor$State;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/muvee/dsg/mmap/api/videoeditor/VideoEditor$State;->SAVING:Lcom/muvee/dsg/mmap/api/videoeditor/VideoEditor$State;

    aput-object v2, v0, v1

    sput-object v0, Lcom/muvee/dsg/mmap/api/videoeditor/VideoEditor$State;->a:[Lcom/muvee/dsg/mmap/api/videoeditor/VideoEditor$State;

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
    .line 113
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/muvee/dsg/mmap/api/videoeditor/VideoEditor$State;
    .locals 1

    .prologue
    .line 113
    const-class v0, Lcom/muvee/dsg/mmap/api/videoeditor/VideoEditor$State;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/muvee/dsg/mmap/api/videoeditor/VideoEditor$State;

    return-object v0
.end method

.method public static values()[Lcom/muvee/dsg/mmap/api/videoeditor/VideoEditor$State;
    .locals 1

    .prologue
    .line 113
    sget-object v0, Lcom/muvee/dsg/mmap/api/videoeditor/VideoEditor$State;->a:[Lcom/muvee/dsg/mmap/api/videoeditor/VideoEditor$State;

    invoke-virtual {v0}, [Lcom/muvee/dsg/mmap/api/videoeditor/VideoEditor$State;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/muvee/dsg/mmap/api/videoeditor/VideoEditor$State;

    return-object v0
.end method
