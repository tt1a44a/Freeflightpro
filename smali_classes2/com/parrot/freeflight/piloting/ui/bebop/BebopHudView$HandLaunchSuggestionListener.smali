.class Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView$HandLaunchSuggestionListener;
.super Ljava/lang/Object;
.source "BebopHudView.java"

# interfaces
.implements Lcom/parrot/freeflight/piloting/ui/handlaunch/HandLaunchSuggestionView$HandLaunchSuggestionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "HandLaunchSuggestionListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView;


# direct methods
.method private constructor <init>(Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView;)V
    .locals 0

    .prologue
    .line 1589
    iput-object p1, p0, Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView$HandLaunchSuggestionListener;->this$0:Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView;Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView;
    .param p2, "x1"    # Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView$1;

    .prologue
    .line 1589
    invoke-direct {p0, p1}, Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView$HandLaunchSuggestionListener;-><init>(Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView;)V

    return-void
.end method


# virtual methods
.method public onHandLaunchActivate()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 1592
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView$HandLaunchSuggestionListener;->this$0:Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView;

    invoke-static {v0}, Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView;->access$6300(Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView;)Lcom/parrot/freeflight/piloting/preference/InterfacePreference;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/parrot/freeflight/piloting/preference/InterfacePreference;->setHandLaunchEnabled(Z)V

    .line 1593
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView$HandLaunchSuggestionListener;->this$0:Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView;

    invoke-static {v0}, Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView;->access$6400(Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView;)V

    .line 1594
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView$HandLaunchSuggestionListener;->this$0:Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView;

    invoke-static {v0}, Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView;->access$6500(Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "hand_launch_suggestion_never_displayed"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 1596
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView$HandLaunchSuggestionListener;->this$0:Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView;

    invoke-static {v0}, Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView;->access$6600(Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "hand_launch_how_to_never_displayed"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1597
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView$HandLaunchSuggestionListener;->this$0:Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView;

    invoke-static {v0}, Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView;->access$6700(Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView;)V

    .line 1599
    :cond_0
    return-void
.end method

.method public onHandLaunchCancel()V
    .locals 3

    .prologue
    .line 1603
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView$HandLaunchSuggestionListener;->this$0:Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView;

    invoke-static {v0}, Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView;->access$6400(Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView;)V

    .line 1604
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView$HandLaunchSuggestionListener;->this$0:Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView;

    invoke-static {v0}, Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView;->access$6800(Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "hand_launch_suggestion_never_displayed"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 1605
    return-void
.end method
