.class public final enum Lcom/muvee/dsg/mmap/api/videoeditor/pregen/TranscodeParam$CallBack$State;
.super Ljava/lang/Enum;
.source "TranscodeParam.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/muvee/dsg/mmap/api/videoeditor/pregen/TranscodeParam$CallBack;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "State"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/muvee/dsg/mmap/api/videoeditor/pregen/TranscodeParam$CallBack$State;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum POST:Lcom/muvee/dsg/mmap/api/videoeditor/pregen/TranscodeParam$CallBack$State;

.field public static final enum PRE:Lcom/muvee/dsg/mmap/api/videoeditor/pregen/TranscodeParam$CallBack$State;

.field public static final enum PROCESS:Lcom/muvee/dsg/mmap/api/videoeditor/pregen/TranscodeParam$CallBack$State;

.field private static final synthetic a:[Lcom/muvee/dsg/mmap/api/videoeditor/pregen/TranscodeParam$CallBack$State;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 14
    new-instance v0, Lcom/muvee/dsg/mmap/api/videoeditor/pregen/TranscodeParam$CallBack$State;

    const-string v1, "PRE"

    invoke-direct {v0, v1, v2}, Lcom/muvee/dsg/mmap/api/videoeditor/pregen/TranscodeParam$CallBack$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/muvee/dsg/mmap/api/videoeditor/pregen/TranscodeParam$CallBack$State;->PRE:Lcom/muvee/dsg/mmap/api/videoeditor/pregen/TranscodeParam$CallBack$State;

    new-instance v0, Lcom/muvee/dsg/mmap/api/videoeditor/pregen/TranscodeParam$CallBack$State;

    const-string v1, "POST"

    invoke-direct {v0, v1, v3}, Lcom/muvee/dsg/mmap/api/videoeditor/pregen/TranscodeParam$CallBack$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/muvee/dsg/mmap/api/videoeditor/pregen/TranscodeParam$CallBack$State;->POST:Lcom/muvee/dsg/mmap/api/videoeditor/pregen/TranscodeParam$CallBack$State;

    new-instance v0, Lcom/muvee/dsg/mmap/api/videoeditor/pregen/TranscodeParam$CallBack$State;

    const-string v1, "PROCESS"

    invoke-direct {v0, v1, v4}, Lcom/muvee/dsg/mmap/api/videoeditor/pregen/TranscodeParam$CallBack$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/muvee/dsg/mmap/api/videoeditor/pregen/TranscodeParam$CallBack$State;->PROCESS:Lcom/muvee/dsg/mmap/api/videoeditor/pregen/TranscodeParam$CallBack$State;

    .line 13
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/muvee/dsg/mmap/api/videoeditor/pregen/TranscodeParam$CallBack$State;

    sget-object v1, Lcom/muvee/dsg/mmap/api/videoeditor/pregen/TranscodeParam$CallBack$State;->PRE:Lcom/muvee/dsg/mmap/api/videoeditor/pregen/TranscodeParam$CallBack$State;

    aput-object v1, v0, v2

    sget-object v1, Lcom/muvee/dsg/mmap/api/videoeditor/pregen/TranscodeParam$CallBack$State;->POST:Lcom/muvee/dsg/mmap/api/videoeditor/pregen/TranscodeParam$CallBack$State;

    aput-object v1, v0, v3

    sget-object v1, Lcom/muvee/dsg/mmap/api/videoeditor/pregen/TranscodeParam$CallBack$State;->PROCESS:Lcom/muvee/dsg/mmap/api/videoeditor/pregen/TranscodeParam$CallBack$State;

    aput-object v1, v0, v4

    sput-object v0, Lcom/muvee/dsg/mmap/api/videoeditor/pregen/TranscodeParam$CallBack$State;->a:[Lcom/muvee/dsg/mmap/api/videoeditor/pregen/TranscodeParam$CallBack$State;

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
    .line 13
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/muvee/dsg/mmap/api/videoeditor/pregen/TranscodeParam$CallBack$State;
    .locals 1

    .prologue
    .line 13
    const-class v0, Lcom/muvee/dsg/mmap/api/videoeditor/pregen/TranscodeParam$CallBack$State;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/muvee/dsg/mmap/api/videoeditor/pregen/TranscodeParam$CallBack$State;

    return-object v0
.end method

.method public static values()[Lcom/muvee/dsg/mmap/api/videoeditor/pregen/TranscodeParam$CallBack$State;
    .locals 1

    .prologue
    .line 13
    sget-object v0, Lcom/muvee/dsg/mmap/api/videoeditor/pregen/TranscodeParam$CallBack$State;->a:[Lcom/muvee/dsg/mmap/api/videoeditor/pregen/TranscodeParam$CallBack$State;

    invoke-virtual {v0}, [Lcom/muvee/dsg/mmap/api/videoeditor/pregen/TranscodeParam$CallBack$State;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/muvee/dsg/mmap/api/videoeditor/pregen/TranscodeParam$CallBack$State;

    return-object v0
.end method