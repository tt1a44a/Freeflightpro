.class final enum Lcom/muvee/dsg/mmas/api/advancevideomixer/AdvanceVideoMixer$a$a;
.super Ljava/lang/Enum;
.source "AdvanceVideoMixer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/muvee/dsg/mmas/api/advancevideomixer/AdvanceVideoMixer$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/muvee/dsg/mmas/api/advancevideomixer/AdvanceVideoMixer$a$a;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/muvee/dsg/mmas/api/advancevideomixer/AdvanceVideoMixer$a$a;

.field public static final enum b:Lcom/muvee/dsg/mmas/api/advancevideomixer/AdvanceVideoMixer$a$a;

.field public static final enum c:Lcom/muvee/dsg/mmas/api/advancevideomixer/AdvanceVideoMixer$a$a;

.field public static final enum d:Lcom/muvee/dsg/mmas/api/advancevideomixer/AdvanceVideoMixer$a$a;

.field private static final synthetic e:[Lcom/muvee/dsg/mmas/api/advancevideomixer/AdvanceVideoMixer$a$a;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 43
    new-instance v0, Lcom/muvee/dsg/mmas/api/advancevideomixer/AdvanceVideoMixer$a$a;

    const-string v1, "INIT"

    invoke-direct {v0, v1, v2}, Lcom/muvee/dsg/mmas/api/advancevideomixer/AdvanceVideoMixer$a$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/muvee/dsg/mmas/api/advancevideomixer/AdvanceVideoMixer$a$a;->a:Lcom/muvee/dsg/mmas/api/advancevideomixer/AdvanceVideoMixer$a$a;

    new-instance v0, Lcom/muvee/dsg/mmas/api/advancevideomixer/AdvanceVideoMixer$a$a;

    const-string v1, "RECORDING_REQUESTED"

    invoke-direct {v0, v1, v3}, Lcom/muvee/dsg/mmas/api/advancevideomixer/AdvanceVideoMixer$a$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/muvee/dsg/mmas/api/advancevideomixer/AdvanceVideoMixer$a$a;->b:Lcom/muvee/dsg/mmas/api/advancevideomixer/AdvanceVideoMixer$a$a;

    new-instance v0, Lcom/muvee/dsg/mmas/api/advancevideomixer/AdvanceVideoMixer$a$a;

    const-string v1, "CAN_ADD_INPUT"

    invoke-direct {v0, v1, v4}, Lcom/muvee/dsg/mmas/api/advancevideomixer/AdvanceVideoMixer$a$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/muvee/dsg/mmas/api/advancevideomixer/AdvanceVideoMixer$a$a;->c:Lcom/muvee/dsg/mmas/api/advancevideomixer/AdvanceVideoMixer$a$a;

    new-instance v0, Lcom/muvee/dsg/mmas/api/advancevideomixer/AdvanceVideoMixer$a$a;

    const-string v1, "RECORDING_STOP_REQUESTED"

    invoke-direct {v0, v1, v5}, Lcom/muvee/dsg/mmas/api/advancevideomixer/AdvanceVideoMixer$a$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/muvee/dsg/mmas/api/advancevideomixer/AdvanceVideoMixer$a$a;->d:Lcom/muvee/dsg/mmas/api/advancevideomixer/AdvanceVideoMixer$a$a;

    const/4 v0, 0x4

    new-array v0, v0, [Lcom/muvee/dsg/mmas/api/advancevideomixer/AdvanceVideoMixer$a$a;

    sget-object v1, Lcom/muvee/dsg/mmas/api/advancevideomixer/AdvanceVideoMixer$a$a;->a:Lcom/muvee/dsg/mmas/api/advancevideomixer/AdvanceVideoMixer$a$a;

    aput-object v1, v0, v2

    sget-object v1, Lcom/muvee/dsg/mmas/api/advancevideomixer/AdvanceVideoMixer$a$a;->b:Lcom/muvee/dsg/mmas/api/advancevideomixer/AdvanceVideoMixer$a$a;

    aput-object v1, v0, v3

    sget-object v1, Lcom/muvee/dsg/mmas/api/advancevideomixer/AdvanceVideoMixer$a$a;->c:Lcom/muvee/dsg/mmas/api/advancevideomixer/AdvanceVideoMixer$a$a;

    aput-object v1, v0, v4

    sget-object v1, Lcom/muvee/dsg/mmas/api/advancevideomixer/AdvanceVideoMixer$a$a;->d:Lcom/muvee/dsg/mmas/api/advancevideomixer/AdvanceVideoMixer$a$a;

    aput-object v1, v0, v5

    sput-object v0, Lcom/muvee/dsg/mmas/api/advancevideomixer/AdvanceVideoMixer$a$a;->e:[Lcom/muvee/dsg/mmas/api/advancevideomixer/AdvanceVideoMixer$a$a;

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
    .line 43
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/muvee/dsg/mmas/api/advancevideomixer/AdvanceVideoMixer$a$a;
    .locals 1

    .prologue
    .line 43
    const-class v0, Lcom/muvee/dsg/mmas/api/advancevideomixer/AdvanceVideoMixer$a$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/muvee/dsg/mmas/api/advancevideomixer/AdvanceVideoMixer$a$a;

    return-object v0
.end method

.method public static values()[Lcom/muvee/dsg/mmas/api/advancevideomixer/AdvanceVideoMixer$a$a;
    .locals 1

    .prologue
    .line 43
    sget-object v0, Lcom/muvee/dsg/mmas/api/advancevideomixer/AdvanceVideoMixer$a$a;->e:[Lcom/muvee/dsg/mmas/api/advancevideomixer/AdvanceVideoMixer$a$a;

    invoke-virtual {v0}, [Lcom/muvee/dsg/mmas/api/advancevideomixer/AdvanceVideoMixer$a$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/muvee/dsg/mmas/api/advancevideomixer/AdvanceVideoMixer$a$a;

    return-object v0
.end method
