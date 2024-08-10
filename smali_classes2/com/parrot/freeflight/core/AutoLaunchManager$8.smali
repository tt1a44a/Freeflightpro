.class Lcom/parrot/freeflight/core/AutoLaunchManager$8;
.super Ljava/lang/Object;
.source "AutoLaunchManager.java"

# interfaces
.implements Lcom/parrot/freeflight/core/ApplicationManager$OnCurrentActivityChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parrot/freeflight/core/AutoLaunchManager;-><init>(Lcom/parrot/freeflight/core/ApplicationManager;Landroid/content/Context;Lcom/parrot/freeflight/user/UserSettings;Lcom/parrot/freeflight/location/SmartLocationManager;Lcom/parrot/freeflight/core/authentication/AuthenticationManager;Lcom/parrot/freeflight/core/academy/AcademyManager;Lcom/parrot/freeflight/core/DeviceConnector;Lcom/parrot/freeflight/core/model/ModelStore;Lcom/parrot/freeflight/gamepad/GamePadManager;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/parrot/freeflight/core/AutoLaunchManager;


# direct methods
.method constructor <init>(Lcom/parrot/freeflight/core/AutoLaunchManager;)V
    .locals 0
    .param p1, "this$0"    # Lcom/parrot/freeflight/core/AutoLaunchManager;

    .prologue
    .line 209
    iput-object p1, p0, Lcom/parrot/freeflight/core/AutoLaunchManager$8;->this$0:Lcom/parrot/freeflight/core/AutoLaunchManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCurrentActivityChange(Landroid/app/Activity;)V
    .locals 2
    .param p1, "activity"    # Landroid/app/Activity;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 212
    iget-object v0, p0, Lcom/parrot/freeflight/core/AutoLaunchManager$8;->this$0:Lcom/parrot/freeflight/core/AutoLaunchManager;

    invoke-static {v0, p1}, Lcom/parrot/freeflight/core/AutoLaunchManager;->access$1902(Lcom/parrot/freeflight/core/AutoLaunchManager;Landroid/app/Activity;)Landroid/app/Activity;

    .line 213
    iget-object v0, p0, Lcom/parrot/freeflight/core/AutoLaunchManager$8;->this$0:Lcom/parrot/freeflight/core/AutoLaunchManager;

    invoke-static {v0}, Lcom/parrot/freeflight/core/AutoLaunchManager;->access$2000(Lcom/parrot/freeflight/core/AutoLaunchManager;)Z

    move-result v0

    if-nez v0, :cond_1

    instance-of v0, p1, Lcom/parrot/freeflight/home/HomeActivity;

    if-eqz v0, :cond_1

    .line 214
    iget-object v0, p0, Lcom/parrot/freeflight/core/AutoLaunchManager$8;->this$0:Lcom/parrot/freeflight/core/AutoLaunchManager;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/parrot/freeflight/core/AutoLaunchManager;->access$2002(Lcom/parrot/freeflight/core/AutoLaunchManager;Z)Z

    .line 215
    iget-object v0, p0, Lcom/parrot/freeflight/core/AutoLaunchManager$8;->this$0:Lcom/parrot/freeflight/core/AutoLaunchManager;

    invoke-static {v0}, Lcom/parrot/freeflight/core/AutoLaunchManager;->access$1500(Lcom/parrot/freeflight/core/AutoLaunchManager;)V

    .line 219
    :cond_0
    :goto_0
    return-void

    .line 216
    :cond_1
    if-eqz p1, :cond_0

    .line 217
    iget-object v0, p0, Lcom/parrot/freeflight/core/AutoLaunchManager$8;->this$0:Lcom/parrot/freeflight/core/AutoLaunchManager;

    invoke-static {v0}, Lcom/parrot/freeflight/core/AutoLaunchManager;->access$1500(Lcom/parrot/freeflight/core/AutoLaunchManager;)V

    goto :goto_0
.end method
