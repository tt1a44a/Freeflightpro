.class public final enum Lcom/parrot/freeflight/media/task/MediaTask$ProgressResult$State;
.super Ljava/lang/Enum;
.source "MediaTask.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/parrot/freeflight/media/task/MediaTask$ProgressResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "State"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/parrot/freeflight/media/task/MediaTask$ProgressResult$State;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/parrot/freeflight/media/task/MediaTask$ProgressResult$State;

.field public static final enum FINISHED:Lcom/parrot/freeflight/media/task/MediaTask$ProgressResult$State;

.field public static final enum NOT_STARTED:Lcom/parrot/freeflight/media/task/MediaTask$ProgressResult$State;

.field public static final enum ONGOING:Lcom/parrot/freeflight/media/task/MediaTask$ProgressResult$State;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 301
    new-instance v0, Lcom/parrot/freeflight/media/task/MediaTask$ProgressResult$State;

    const-string v1, "NOT_STARTED"

    invoke-direct {v0, v1, v2}, Lcom/parrot/freeflight/media/task/MediaTask$ProgressResult$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/parrot/freeflight/media/task/MediaTask$ProgressResult$State;->NOT_STARTED:Lcom/parrot/freeflight/media/task/MediaTask$ProgressResult$State;

    new-instance v0, Lcom/parrot/freeflight/media/task/MediaTask$ProgressResult$State;

    const-string v1, "ONGOING"

    invoke-direct {v0, v1, v3}, Lcom/parrot/freeflight/media/task/MediaTask$ProgressResult$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/parrot/freeflight/media/task/MediaTask$ProgressResult$State;->ONGOING:Lcom/parrot/freeflight/media/task/MediaTask$ProgressResult$State;

    new-instance v0, Lcom/parrot/freeflight/media/task/MediaTask$ProgressResult$State;

    const-string v1, "FINISHED"

    invoke-direct {v0, v1, v4}, Lcom/parrot/freeflight/media/task/MediaTask$ProgressResult$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/parrot/freeflight/media/task/MediaTask$ProgressResult$State;->FINISHED:Lcom/parrot/freeflight/media/task/MediaTask$ProgressResult$State;

    .line 300
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/parrot/freeflight/media/task/MediaTask$ProgressResult$State;

    sget-object v1, Lcom/parrot/freeflight/media/task/MediaTask$ProgressResult$State;->NOT_STARTED:Lcom/parrot/freeflight/media/task/MediaTask$ProgressResult$State;

    aput-object v1, v0, v2

    sget-object v1, Lcom/parrot/freeflight/media/task/MediaTask$ProgressResult$State;->ONGOING:Lcom/parrot/freeflight/media/task/MediaTask$ProgressResult$State;

    aput-object v1, v0, v3

    sget-object v1, Lcom/parrot/freeflight/media/task/MediaTask$ProgressResult$State;->FINISHED:Lcom/parrot/freeflight/media/task/MediaTask$ProgressResult$State;

    aput-object v1, v0, v4

    sput-object v0, Lcom/parrot/freeflight/media/task/MediaTask$ProgressResult$State;->$VALUES:[Lcom/parrot/freeflight/media/task/MediaTask$ProgressResult$State;

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
    .line 300
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/parrot/freeflight/media/task/MediaTask$ProgressResult$State;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 300
    const-class v0, Lcom/parrot/freeflight/media/task/MediaTask$ProgressResult$State;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/parrot/freeflight/media/task/MediaTask$ProgressResult$State;

    return-object v0
.end method

.method public static values()[Lcom/parrot/freeflight/media/task/MediaTask$ProgressResult$State;
    .locals 1

    .prologue
    .line 300
    sget-object v0, Lcom/parrot/freeflight/media/task/MediaTask$ProgressResult$State;->$VALUES:[Lcom/parrot/freeflight/media/task/MediaTask$ProgressResult$State;

    invoke-virtual {v0}, [Lcom/parrot/freeflight/media/task/MediaTask$ProgressResult$State;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/parrot/freeflight/media/task/MediaTask$ProgressResult$State;

    return-object v0
.end method
