.class Lcom/parrot/freeflight/core/AutoLaunchManager$6;
.super Ljava/lang/Object;
.source "AutoLaunchManager.java"

# interfaces
.implements Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/parrot/freeflight/core/AutoLaunchManager;
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
    .line 178
    iput-object p1, p0, Lcom/parrot/freeflight/core/AutoLaunchManager$6;->this$0:Lcom/parrot/freeflight/core/AutoLaunchManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .locals 2
    .param p1, "sharedPreferences"    # Landroid/content/SharedPreferences;
    .param p2, "key"    # Ljava/lang/String;

    .prologue
    .line 181
    iget-object v0, p0, Lcom/parrot/freeflight/core/AutoLaunchManager$6;->this$0:Lcom/parrot/freeflight/core/AutoLaunchManager;

    invoke-static {v0}, Lcom/parrot/freeflight/core/AutoLaunchManager;->access$1700(Lcom/parrot/freeflight/core/AutoLaunchManager;)Lcom/parrot/freeflight/piloting/preference/FpvStatePreference;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/parrot/freeflight/piloting/preference/FpvStatePreference;->onPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)Z

    .line 182
    iget-object v0, p0, Lcom/parrot/freeflight/core/AutoLaunchManager$6;->this$0:Lcom/parrot/freeflight/core/AutoLaunchManager;

    invoke-static {v0}, Lcom/parrot/freeflight/core/AutoLaunchManager;->access$1300(Lcom/parrot/freeflight/core/AutoLaunchManager;)Lcom/parrot/freeflight/core/AutoLaunchManager$FpvModeChecker;

    move-result-object v0

    invoke-static {v0}, Lcom/parrot/freeflight/core/AutoLaunchManager$FpvModeChecker;->access$1400(Lcom/parrot/freeflight/core/AutoLaunchManager$FpvModeChecker;)V

    .line 183
    iget-object v0, p0, Lcom/parrot/freeflight/core/AutoLaunchManager$6;->this$0:Lcom/parrot/freeflight/core/AutoLaunchManager;

    invoke-static {v0}, Lcom/parrot/freeflight/core/AutoLaunchManager;->access$1300(Lcom/parrot/freeflight/core/AutoLaunchManager;)Lcom/parrot/freeflight/core/AutoLaunchManager$FpvModeChecker;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/parrot/freeflight/core/AutoLaunchManager$FpvModeChecker;->setNeedAutoLaunch(Z)V

    .line 184
    return-void
.end method
