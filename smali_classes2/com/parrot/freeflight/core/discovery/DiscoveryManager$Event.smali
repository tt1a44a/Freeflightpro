.class final enum Lcom/parrot/freeflight/core/discovery/DiscoveryManager$Event;
.super Ljava/lang/Enum;
.source "DiscoveryManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/parrot/freeflight/core/discovery/DiscoveryManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "Event"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/parrot/freeflight/core/discovery/DiscoveryManager$Event;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/parrot/freeflight/core/discovery/DiscoveryManager$Event;

.field public static final enum CONNECT:Lcom/parrot/freeflight/core/discovery/DiscoveryManager$Event;

.field public static final enum DISCONNECT:Lcom/parrot/freeflight/core/discovery/DiscoveryManager$Event;

.field public static final enum SCREEN_OFF:Lcom/parrot/freeflight/core/discovery/DiscoveryManager$Event;

.field public static final enum SCREEN_ON:Lcom/parrot/freeflight/core/discovery/DiscoveryManager$Event;

.field public static final enum START:Lcom/parrot/freeflight/core/discovery/DiscoveryManager$Event;

.field public static final enum STOP:Lcom/parrot/freeflight/core/discovery/DiscoveryManager$Event;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 40
    new-instance v0, Lcom/parrot/freeflight/core/discovery/DiscoveryManager$Event;

    const-string v1, "CONNECT"

    invoke-direct {v0, v1, v3}, Lcom/parrot/freeflight/core/discovery/DiscoveryManager$Event;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/parrot/freeflight/core/discovery/DiscoveryManager$Event;->CONNECT:Lcom/parrot/freeflight/core/discovery/DiscoveryManager$Event;

    .line 41
    new-instance v0, Lcom/parrot/freeflight/core/discovery/DiscoveryManager$Event;

    const-string v1, "DISCONNECT"

    invoke-direct {v0, v1, v4}, Lcom/parrot/freeflight/core/discovery/DiscoveryManager$Event;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/parrot/freeflight/core/discovery/DiscoveryManager$Event;->DISCONNECT:Lcom/parrot/freeflight/core/discovery/DiscoveryManager$Event;

    .line 42
    new-instance v0, Lcom/parrot/freeflight/core/discovery/DiscoveryManager$Event;

    const-string v1, "SCREEN_ON"

    invoke-direct {v0, v1, v5}, Lcom/parrot/freeflight/core/discovery/DiscoveryManager$Event;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/parrot/freeflight/core/discovery/DiscoveryManager$Event;->SCREEN_ON:Lcom/parrot/freeflight/core/discovery/DiscoveryManager$Event;

    .line 43
    new-instance v0, Lcom/parrot/freeflight/core/discovery/DiscoveryManager$Event;

    const-string v1, "SCREEN_OFF"

    invoke-direct {v0, v1, v6}, Lcom/parrot/freeflight/core/discovery/DiscoveryManager$Event;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/parrot/freeflight/core/discovery/DiscoveryManager$Event;->SCREEN_OFF:Lcom/parrot/freeflight/core/discovery/DiscoveryManager$Event;

    .line 44
    new-instance v0, Lcom/parrot/freeflight/core/discovery/DiscoveryManager$Event;

    const-string v1, "START"

    invoke-direct {v0, v1, v7}, Lcom/parrot/freeflight/core/discovery/DiscoveryManager$Event;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/parrot/freeflight/core/discovery/DiscoveryManager$Event;->START:Lcom/parrot/freeflight/core/discovery/DiscoveryManager$Event;

    .line 45
    new-instance v0, Lcom/parrot/freeflight/core/discovery/DiscoveryManager$Event;

    const-string v1, "STOP"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/parrot/freeflight/core/discovery/DiscoveryManager$Event;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/parrot/freeflight/core/discovery/DiscoveryManager$Event;->STOP:Lcom/parrot/freeflight/core/discovery/DiscoveryManager$Event;

    .line 39
    const/4 v0, 0x6

    new-array v0, v0, [Lcom/parrot/freeflight/core/discovery/DiscoveryManager$Event;

    sget-object v1, Lcom/parrot/freeflight/core/discovery/DiscoveryManager$Event;->CONNECT:Lcom/parrot/freeflight/core/discovery/DiscoveryManager$Event;

    aput-object v1, v0, v3

    sget-object v1, Lcom/parrot/freeflight/core/discovery/DiscoveryManager$Event;->DISCONNECT:Lcom/parrot/freeflight/core/discovery/DiscoveryManager$Event;

    aput-object v1, v0, v4

    sget-object v1, Lcom/parrot/freeflight/core/discovery/DiscoveryManager$Event;->SCREEN_ON:Lcom/parrot/freeflight/core/discovery/DiscoveryManager$Event;

    aput-object v1, v0, v5

    sget-object v1, Lcom/parrot/freeflight/core/discovery/DiscoveryManager$Event;->SCREEN_OFF:Lcom/parrot/freeflight/core/discovery/DiscoveryManager$Event;

    aput-object v1, v0, v6

    sget-object v1, Lcom/parrot/freeflight/core/discovery/DiscoveryManager$Event;->START:Lcom/parrot/freeflight/core/discovery/DiscoveryManager$Event;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/parrot/freeflight/core/discovery/DiscoveryManager$Event;->STOP:Lcom/parrot/freeflight/core/discovery/DiscoveryManager$Event;

    aput-object v2, v0, v1

    sput-object v0, Lcom/parrot/freeflight/core/discovery/DiscoveryManager$Event;->$VALUES:[Lcom/parrot/freeflight/core/discovery/DiscoveryManager$Event;

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
    .line 39
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/parrot/freeflight/core/discovery/DiscoveryManager$Event;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 39
    const-class v0, Lcom/parrot/freeflight/core/discovery/DiscoveryManager$Event;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/parrot/freeflight/core/discovery/DiscoveryManager$Event;

    return-object v0
.end method

.method public static values()[Lcom/parrot/freeflight/core/discovery/DiscoveryManager$Event;
    .locals 1

    .prologue
    .line 39
    sget-object v0, Lcom/parrot/freeflight/core/discovery/DiscoveryManager$Event;->$VALUES:[Lcom/parrot/freeflight/core/discovery/DiscoveryManager$Event;

    invoke-virtual {v0}, [Lcom/parrot/freeflight/core/discovery/DiscoveryManager$Event;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/parrot/freeflight/core/discovery/DiscoveryManager$Event;

    return-object v0
.end method
