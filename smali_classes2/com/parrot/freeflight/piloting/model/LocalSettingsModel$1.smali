.class Lcom/parrot/freeflight/piloting/model/LocalSettingsModel$1;
.super Ljava/lang/Object;
.source "LocalSettingsModel.java"

# interfaces
.implements Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/parrot/freeflight/piloting/model/LocalSettingsModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/parrot/freeflight/piloting/model/LocalSettingsModel;


# direct methods
.method constructor <init>(Lcom/parrot/freeflight/piloting/model/LocalSettingsModel;)V
    .locals 0
    .param p1, "this$0"    # Lcom/parrot/freeflight/piloting/model/LocalSettingsModel;

    .prologue
    .line 160
    iput-object p1, p0, Lcom/parrot/freeflight/piloting/model/LocalSettingsModel$1;->this$0:Lcom/parrot/freeflight/piloting/model/LocalSettingsModel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .locals 1
    .param p1, "sharedPreferences"    # Landroid/content/SharedPreferences;
    .param p2, "key"    # Ljava/lang/String;

    .prologue
    .line 163
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/model/LocalSettingsModel$1;->this$0:Lcom/parrot/freeflight/piloting/model/LocalSettingsModel;

    invoke-static {v0, p1, p2}, Lcom/parrot/freeflight/piloting/model/LocalSettingsModel;->access$000(Lcom/parrot/freeflight/piloting/model/LocalSettingsModel;Landroid/content/SharedPreferences;Ljava/lang/String;)V

    .line 164
    return-void
.end method
