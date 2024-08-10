.class Lcom/parrot/freeflight/core/academy/DroneRegisterManager$2;
.super Ljava/lang/Object;
.source "DroneRegisterManager.java"

# interfaces
.implements Lcom/parrot/freeflight/core/academy/listener/ARAcademyAuthAddDroneListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parrot/freeflight/core/academy/DroneRegisterManager;->registerDrone(Lcom/parrot/freeflight/core/academy/AcademyService;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/parrot/freeflight/core/academy/DroneRegisterManager;

.field final synthetic val$drone:Lcom/parrot/freeflight/core/academy/model/ARAcademyDrone;

.field final synthetic val$newSerialsAlreadySent:Ljava/util/Set;


# direct methods
.method constructor <init>(Lcom/parrot/freeflight/core/academy/DroneRegisterManager;Ljava/util/Set;Lcom/parrot/freeflight/core/academy/model/ARAcademyDrone;)V
    .locals 0
    .param p1, "this$0"    # Lcom/parrot/freeflight/core/academy/DroneRegisterManager;

    .prologue
    .line 160
    iput-object p1, p0, Lcom/parrot/freeflight/core/academy/DroneRegisterManager$2;->this$0:Lcom/parrot/freeflight/core/academy/DroneRegisterManager;

    iput-object p2, p0, Lcom/parrot/freeflight/core/academy/DroneRegisterManager$2;->val$newSerialsAlreadySent:Ljava/util/Set;

    iput-object p3, p0, Lcom/parrot/freeflight/core/academy/DroneRegisterManager$2;->val$drone:Lcom/parrot/freeflight/core/academy/model/ARAcademyDrone;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAuthAddDroneResponse(Lcom/parrot/freeflight/core/academy/model/ARACADEMY_ERROR_ENUM;Lcom/parrot/freeflight/core/academy/model/ARAcademyDrone;)V
    .locals 3
    .param p1, "error"    # Lcom/parrot/freeflight/core/academy/model/ARACADEMY_ERROR_ENUM;
    .param p2, "model"    # Lcom/parrot/freeflight/core/academy/model/ARAcademyDrone;

    .prologue
    .line 163
    sget-object v0, Lcom/parrot/freeflight/core/academy/model/ARACADEMY_ERROR_ENUM;->ARACADEMY_OK:Lcom/parrot/freeflight/core/academy/model/ARACADEMY_ERROR_ENUM;

    if-ne p1, v0, :cond_0

    .line 165
    iget-object v0, p0, Lcom/parrot/freeflight/core/academy/DroneRegisterManager$2;->val$newSerialsAlreadySent:Ljava/util/Set;

    iget-object v1, p0, Lcom/parrot/freeflight/core/academy/DroneRegisterManager$2;->val$drone:Lcom/parrot/freeflight/core/academy/model/ARAcademyDrone;

    invoke-virtual {v1}, Lcom/parrot/freeflight/core/academy/model/ARAcademyDrone;->getSerial()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 167
    iget-object v0, p0, Lcom/parrot/freeflight/core/academy/DroneRegisterManager$2;->this$0:Lcom/parrot/freeflight/core/academy/DroneRegisterManager;

    invoke-static {v0}, Lcom/parrot/freeflight/core/academy/DroneRegisterManager;->access$200(Lcom/parrot/freeflight/core/academy/DroneRegisterManager;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "serials_sent"

    iget-object v2, p0, Lcom/parrot/freeflight/core/academy/DroneRegisterManager$2;->val$newSerialsAlreadySent:Ljava/util/Set;

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putStringSet(Ljava/lang/String;Ljava/util/Set;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 169
    :cond_0
    return-void
.end method
