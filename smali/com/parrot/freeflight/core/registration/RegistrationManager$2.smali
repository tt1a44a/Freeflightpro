.class Lcom/parrot/freeflight/core/registration/RegistrationManager$2;
.super Ljava/lang/Object;
.source "RegistrationManager.java"

# interfaces
.implements Lcom/parrot/freeflight/core/model/ModelStore$Listener;


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
    .line 153
    iput-object p1, p0, Lcom/parrot/freeflight/core/registration/RegistrationManager$2;->this$0:Lcom/parrot/freeflight/core/registration/RegistrationManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onModelChange(Lcom/parrot/freeflight/core/model/Model;)V
    .locals 2
    .param p1, "model"    # Lcom/parrot/freeflight/core/model/Model;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 156
    iget-object v0, p0, Lcom/parrot/freeflight/core/registration/RegistrationManager$2;->this$0:Lcom/parrot/freeflight/core/registration/RegistrationManager;

    invoke-static {v0}, Lcom/parrot/freeflight/core/registration/RegistrationManager;->access$100(Lcom/parrot/freeflight/core/registration/RegistrationManager;)Lcom/parrot/freeflight/core/model/DroneModel;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 157
    iget-object v0, p0, Lcom/parrot/freeflight/core/registration/RegistrationManager$2;->this$0:Lcom/parrot/freeflight/core/registration/RegistrationManager;

    invoke-static {v0}, Lcom/parrot/freeflight/core/registration/RegistrationManager;->access$100(Lcom/parrot/freeflight/core/registration/RegistrationManager;)Lcom/parrot/freeflight/core/model/DroneModel;

    move-result-object v0

    iget-object v1, p0, Lcom/parrot/freeflight/core/registration/RegistrationManager$2;->this$0:Lcom/parrot/freeflight/core/registration/RegistrationManager;

    invoke-static {v1}, Lcom/parrot/freeflight/core/registration/RegistrationManager;->access$200(Lcom/parrot/freeflight/core/registration/RegistrationManager;)Lcom/parrot/freeflight/core/model/Model$Listener;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/parrot/freeflight/core/model/DroneModel;->removeListener(Lcom/parrot/freeflight/core/model/Model$Listener;)V

    .line 159
    :cond_0
    iget-object v0, p0, Lcom/parrot/freeflight/core/registration/RegistrationManager$2;->this$0:Lcom/parrot/freeflight/core/registration/RegistrationManager;

    sget-object v1, Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionState;->STATE_UNKNOWN:Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionState;

    invoke-static {v0, v1}, Lcom/parrot/freeflight/core/registration/RegistrationManager;->access$302(Lcom/parrot/freeflight/core/registration/RegistrationManager;Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionState;)Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionState;

    .line 160
    iget-object v0, p0, Lcom/parrot/freeflight/core/registration/RegistrationManager$2;->this$0:Lcom/parrot/freeflight/core/registration/RegistrationManager;

    check-cast p1, Lcom/parrot/freeflight/core/model/DroneModel;

    .end local p1    # "model":Lcom/parrot/freeflight/core/model/Model;
    invoke-static {v0, p1}, Lcom/parrot/freeflight/core/registration/RegistrationManager;->access$102(Lcom/parrot/freeflight/core/registration/RegistrationManager;Lcom/parrot/freeflight/core/model/DroneModel;)Lcom/parrot/freeflight/core/model/DroneModel;

    .line 161
    iget-object v0, p0, Lcom/parrot/freeflight/core/registration/RegistrationManager$2;->this$0:Lcom/parrot/freeflight/core/registration/RegistrationManager;

    invoke-static {v0}, Lcom/parrot/freeflight/core/registration/RegistrationManager;->access$100(Lcom/parrot/freeflight/core/registration/RegistrationManager;)Lcom/parrot/freeflight/core/model/DroneModel;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 162
    iget-object v0, p0, Lcom/parrot/freeflight/core/registration/RegistrationManager$2;->this$0:Lcom/parrot/freeflight/core/registration/RegistrationManager;

    invoke-static {v0}, Lcom/parrot/freeflight/core/registration/RegistrationManager;->access$100(Lcom/parrot/freeflight/core/registration/RegistrationManager;)Lcom/parrot/freeflight/core/model/DroneModel;

    move-result-object v0

    iget-object v1, p0, Lcom/parrot/freeflight/core/registration/RegistrationManager$2;->this$0:Lcom/parrot/freeflight/core/registration/RegistrationManager;

    invoke-static {v1}, Lcom/parrot/freeflight/core/registration/RegistrationManager;->access$200(Lcom/parrot/freeflight/core/registration/RegistrationManager;)Lcom/parrot/freeflight/core/model/Model$Listener;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/parrot/freeflight/core/model/DroneModel;->addListener(Lcom/parrot/freeflight/core/model/Model$Listener;)V

    .line 166
    :goto_0
    return-void

    .line 164
    :cond_1
    iget-object v0, p0, Lcom/parrot/freeflight/core/registration/RegistrationManager$2;->this$0:Lcom/parrot/freeflight/core/registration/RegistrationManager;

    const/4 v1, -0x1

    invoke-static {v0, v1}, Lcom/parrot/freeflight/core/registration/RegistrationManager;->access$402(Lcom/parrot/freeflight/core/registration/RegistrationManager;I)I

    goto :goto_0
.end method
