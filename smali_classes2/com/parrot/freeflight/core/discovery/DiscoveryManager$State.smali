.class final enum Lcom/parrot/freeflight/core/discovery/DiscoveryManager$State;
.super Ljava/lang/Enum;
.source "DiscoveryManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/parrot/freeflight/core/discovery/DiscoveryManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "State"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/parrot/freeflight/core/discovery/DiscoveryManager$State;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/parrot/freeflight/core/discovery/DiscoveryManager$State;

.field public static final enum CONNECTED:Lcom/parrot/freeflight/core/discovery/DiscoveryManager$State;

.field public static final enum IDLE:Lcom/parrot/freeflight/core/discovery/DiscoveryManager$State;

.field public static final enum SHOULD_CONNECT:Lcom/parrot/freeflight/core/discovery/DiscoveryManager$State;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 34
    new-instance v0, Lcom/parrot/freeflight/core/discovery/DiscoveryManager$State;

    const-string v1, "IDLE"

    invoke-direct {v0, v1, v2}, Lcom/parrot/freeflight/core/discovery/DiscoveryManager$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/parrot/freeflight/core/discovery/DiscoveryManager$State;->IDLE:Lcom/parrot/freeflight/core/discovery/DiscoveryManager$State;

    .line 35
    new-instance v0, Lcom/parrot/freeflight/core/discovery/DiscoveryManager$State;

    const-string v1, "SHOULD_CONNECT"

    invoke-direct {v0, v1, v3}, Lcom/parrot/freeflight/core/discovery/DiscoveryManager$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/parrot/freeflight/core/discovery/DiscoveryManager$State;->SHOULD_CONNECT:Lcom/parrot/freeflight/core/discovery/DiscoveryManager$State;

    .line 36
    new-instance v0, Lcom/parrot/freeflight/core/discovery/DiscoveryManager$State;

    const-string v1, "CONNECTED"

    invoke-direct {v0, v1, v4}, Lcom/parrot/freeflight/core/discovery/DiscoveryManager$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/parrot/freeflight/core/discovery/DiscoveryManager$State;->CONNECTED:Lcom/parrot/freeflight/core/discovery/DiscoveryManager$State;

    .line 33
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/parrot/freeflight/core/discovery/DiscoveryManager$State;

    sget-object v1, Lcom/parrot/freeflight/core/discovery/DiscoveryManager$State;->IDLE:Lcom/parrot/freeflight/core/discovery/DiscoveryManager$State;

    aput-object v1, v0, v2

    sget-object v1, Lcom/parrot/freeflight/core/discovery/DiscoveryManager$State;->SHOULD_CONNECT:Lcom/parrot/freeflight/core/discovery/DiscoveryManager$State;

    aput-object v1, v0, v3

    sget-object v1, Lcom/parrot/freeflight/core/discovery/DiscoveryManager$State;->CONNECTED:Lcom/parrot/freeflight/core/discovery/DiscoveryManager$State;

    aput-object v1, v0, v4

    sput-object v0, Lcom/parrot/freeflight/core/discovery/DiscoveryManager$State;->$VALUES:[Lcom/parrot/freeflight/core/discovery/DiscoveryManager$State;

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
    .line 33
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/parrot/freeflight/core/discovery/DiscoveryManager$State;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 33
    const-class v0, Lcom/parrot/freeflight/core/discovery/DiscoveryManager$State;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/parrot/freeflight/core/discovery/DiscoveryManager$State;

    return-object v0
.end method

.method public static values()[Lcom/parrot/freeflight/core/discovery/DiscoveryManager$State;
    .locals 1

    .prologue
    .line 33
    sget-object v0, Lcom/parrot/freeflight/core/discovery/DiscoveryManager$State;->$VALUES:[Lcom/parrot/freeflight/core/discovery/DiscoveryManager$State;

    invoke-virtual {v0}, [Lcom/parrot/freeflight/core/discovery/DiscoveryManager$State;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/parrot/freeflight/core/discovery/DiscoveryManager$State;

    return-object v0
.end method
