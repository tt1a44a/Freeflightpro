.class Lcom/parrot/freeflight/core/registration/RegistrationManager$3;
.super Ljava/lang/Object;
.source "RegistrationManager.java"

# interfaces
.implements Lcom/parrot/freeflight/core/model/Model$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/parrot/freeflight/core/registration/RegistrationManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/parrot/freeflight/core/registration/RegistrationManager;


# direct methods
.method constructor <init>(Lcom/parrot/freeflight/core/registration/RegistrationManager;)V
    .locals 0
    .param p1, "this$0"    # Lcom/parrot/freeflight/core/registration/RegistrationManager;

    .prologue
    .line 169
    iput-object p1, p0, Lcom/parrot/freeflight/core/registration/RegistrationManager$3;->this$0:Lcom/parrot/freeflight/core/registration/RegistrationManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChange()V
    .locals 2

    .prologue
    .line 172
    iget-object v1, p0, Lcom/parrot/freeflight/core/registration/RegistrationManager$3;->this$0:Lcom/parrot/freeflight/core/registration/RegistrationManager;

    invoke-static {v1}, Lcom/parrot/freeflight/core/registration/RegistrationManager;->access$100(Lcom/parrot/freeflight/core/registration/RegistrationManager;)Lcom/parrot/freeflight/core/model/DroneModel;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 173
    iget-object v1, p0, Lcom/parrot/freeflight/core/registration/RegistrationManager$3;->this$0:Lcom/parrot/freeflight/core/registration/RegistrationManager;

    invoke-static {v1}, Lcom/parrot/freeflight/core/registration/RegistrationManager;->access$100(Lcom/parrot/freeflight/core/registration/RegistrationManager;)Lcom/parrot/freeflight/core/model/DroneModel;

    move-result-object v1

    invoke-virtual {v1}, Lcom/parrot/freeflight/core/model/DroneModel;->getConnectionState()Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionState;

    move-result-object v0

    .line 174
    .local v0, "connectionState":Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionState;
    iget-object v1, p0, Lcom/parrot/freeflight/core/registration/RegistrationManager$3;->this$0:Lcom/parrot/freeflight/core/registration/RegistrationManager;

    invoke-static {v1}, Lcom/parrot/freeflight/core/registration/RegistrationManager;->access$300(Lcom/parrot/freeflight/core/registration/RegistrationManager;)Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionState;

    move-result-object v1

    if-eq v1, v0, :cond_0

    .line 175
    iget-object v1, p0, Lcom/parrot/freeflight/core/registration/RegistrationManager$3;->this$0:Lcom/parrot/freeflight/core/registration/RegistrationManager;

    invoke-static {v1, v0}, Lcom/parrot/freeflight/core/registration/RegistrationManager;->access$302(Lcom/parrot/freeflight/core/registration/RegistrationManager;Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionState;)Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionState;

    .line 176
    invoke-virtual {v0}, Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionState;->isDroneConnected()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 177
    iget-object v1, p0, Lcom/parrot/freeflight/core/registration/RegistrationManager$3;->this$0:Lcom/parrot/freeflight/core/registration/RegistrationManager;

    invoke-virtual {v1}, Lcom/parrot/freeflight/core/registration/RegistrationManager;->performRegistrationCheck()V

    .line 181
    .end local v0    # "connectionState":Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionState;
    :cond_0
    return-void
.end method
