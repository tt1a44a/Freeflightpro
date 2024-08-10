.class Lcom/parrot/freeflight/core/academy/DroneRegisterManager$1;
.super Ljava/lang/Object;
.source "DroneRegisterManager.java"

# interfaces
.implements Lcom/parrot/freeflight/user/UserSettings$OnUserDroneChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/parrot/freeflight/core/academy/DroneRegisterManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/parrot/freeflight/core/academy/DroneRegisterManager;


# direct methods
.method constructor <init>(Lcom/parrot/freeflight/core/academy/DroneRegisterManager;)V
    .locals 0
    .param p1, "this$0"    # Lcom/parrot/freeflight/core/academy/DroneRegisterManager;

    .prologue
    .line 51
    iput-object p1, p0, Lcom/parrot/freeflight/core/academy/DroneRegisterManager$1;->this$0:Lcom/parrot/freeflight/core/academy/DroneRegisterManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChange()V
    .locals 2

    .prologue
    .line 54
    iget-object v0, p0, Lcom/parrot/freeflight/core/academy/DroneRegisterManager$1;->this$0:Lcom/parrot/freeflight/core/academy/DroneRegisterManager;

    iget-object v1, p0, Lcom/parrot/freeflight/core/academy/DroneRegisterManager$1;->this$0:Lcom/parrot/freeflight/core/academy/DroneRegisterManager;

    invoke-static {v1}, Lcom/parrot/freeflight/core/academy/DroneRegisterManager;->access$000(Lcom/parrot/freeflight/core/academy/DroneRegisterManager;)Lcom/parrot/freeflight/core/academy/AcademyService;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/parrot/freeflight/core/academy/DroneRegisterManager;->access$100(Lcom/parrot/freeflight/core/academy/DroneRegisterManager;Lcom/parrot/freeflight/core/academy/AcademyService;)V

    .line 55
    return-void
.end method
