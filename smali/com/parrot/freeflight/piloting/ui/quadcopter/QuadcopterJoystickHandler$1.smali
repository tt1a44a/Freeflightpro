.class Lcom/parrot/freeflight/piloting/ui/quadcopter/QuadcopterJoystickHandler$1;
.super Ljava/lang/Object;
.source "QuadcopterJoystickHandler.java"

# interfaces
.implements Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/parrot/freeflight/piloting/ui/quadcopter/QuadcopterJoystickHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/parrot/freeflight/piloting/ui/quadcopter/QuadcopterJoystickHandler;


# direct methods
.method constructor <init>(Lcom/parrot/freeflight/piloting/ui/quadcopter/QuadcopterJoystickHandler;)V
    .locals 0
    .param p1, "this$0"    # Lcom/parrot/freeflight/piloting/ui/quadcopter/QuadcopterJoystickHandler;

    .prologue
    .line 106
    iput-object p1, p0, Lcom/parrot/freeflight/piloting/ui/quadcopter/QuadcopterJoystickHandler$1;->this$0:Lcom/parrot/freeflight/piloting/ui/quadcopter/QuadcopterJoystickHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .locals 1
    .param p1, "sharedPreferences"    # Landroid/content/SharedPreferences;
    .param p2, "key"    # Ljava/lang/String;

    .prologue
    .line 109
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/quadcopter/QuadcopterJoystickHandler$1;->this$0:Lcom/parrot/freeflight/piloting/ui/quadcopter/QuadcopterJoystickHandler;

    invoke-static {v0}, Lcom/parrot/freeflight/piloting/ui/quadcopter/QuadcopterJoystickHandler;->access$000(Lcom/parrot/freeflight/piloting/ui/quadcopter/QuadcopterJoystickHandler;)Lcom/parrot/freeflight/piloting/preference/IJoystickPreferences;

    move-result-object v0

    invoke-interface {v0}, Lcom/parrot/freeflight/piloting/preference/IJoystickPreferences;->getPilotingTypePreferenceKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 110
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/quadcopter/QuadcopterJoystickHandler$1;->this$0:Lcom/parrot/freeflight/piloting/ui/quadcopter/QuadcopterJoystickHandler;

    invoke-virtual {v0, p1}, Lcom/parrot/freeflight/piloting/ui/quadcopter/QuadcopterJoystickHandler;->updatePilotingControllerType(Landroid/content/SharedPreferences;)V

    .line 112
    :cond_0
    return-void
.end method
