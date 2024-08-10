.class Lcom/parrot/freeflight/core/academy/AcademyManager$2;
.super Ljava/lang/Object;
.source "AcademyManager.java"

# interfaces
.implements Lcom/parrot/freeflight/core/authentication/AuthenticationManager$AuthenticationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/parrot/freeflight/core/academy/AcademyManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/parrot/freeflight/core/academy/AcademyManager;


# direct methods
.method constructor <init>(Lcom/parrot/freeflight/core/academy/AcademyManager;)V
    .locals 0
    .param p1, "this$0"    # Lcom/parrot/freeflight/core/academy/AcademyManager;

    .prologue
    .line 164
    iput-object p1, p0, Lcom/parrot/freeflight/core/academy/AcademyManager$2;->this$0:Lcom/parrot/freeflight/core/academy/AcademyManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAuthenticationChanged()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 167
    iget-object v0, p0, Lcom/parrot/freeflight/core/academy/AcademyManager$2;->this$0:Lcom/parrot/freeflight/core/academy/AcademyManager;

    invoke-static {v0}, Lcom/parrot/freeflight/core/academy/AcademyManager;->access$400(Lcom/parrot/freeflight/core/academy/AcademyManager;)Lcom/parrot/freeflight/core/authentication/AuthenticationManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/parrot/freeflight/core/authentication/AuthenticationManager;->isAuthenticated()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 168
    iget-object v0, p0, Lcom/parrot/freeflight/core/academy/AcademyManager$2;->this$0:Lcom/parrot/freeflight/core/academy/AcademyManager;

    invoke-virtual {v0}, Lcom/parrot/freeflight/core/academy/AcademyManager;->requestProfile()V

    .line 169
    iget-object v0, p0, Lcom/parrot/freeflight/core/academy/AcademyManager$2;->this$0:Lcom/parrot/freeflight/core/academy/AcademyManager;

    invoke-static {v0}, Lcom/parrot/freeflight/core/academy/AcademyManager;->access$600(Lcom/parrot/freeflight/core/academy/AcademyManager;)Lcom/parrot/freeflight/core/academy/RunOfflineManager;

    move-result-object v0

    iget-object v1, p0, Lcom/parrot/freeflight/core/academy/AcademyManager$2;->this$0:Lcom/parrot/freeflight/core/academy/AcademyManager;

    invoke-static {v1}, Lcom/parrot/freeflight/core/academy/AcademyManager;->access$500(Lcom/parrot/freeflight/core/academy/AcademyManager;)Lcom/parrot/freeflight/core/academy/AcademyService;

    move-result-object v1

    iget-object v2, p0, Lcom/parrot/freeflight/core/academy/AcademyManager$2;->this$0:Lcom/parrot/freeflight/core/academy/AcademyManager;

    invoke-static {v2}, Lcom/parrot/freeflight/core/academy/AcademyManager;->access$400(Lcom/parrot/freeflight/core/academy/AcademyManager;)Lcom/parrot/freeflight/core/authentication/AuthenticationManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/parrot/freeflight/core/authentication/AuthenticationManager;->getUserProfile()Lcom/parrot/freeflight/core/authentication/model/UserProfile;

    move-result-object v2

    iget-object v2, v2, Lcom/parrot/freeflight/core/authentication/model/UserProfile;->publicName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/parrot/freeflight/core/academy/RunOfflineManager;->onAcademyConnected(Lcom/parrot/freeflight/core/academy/AcademyService;Ljava/lang/String;)V

    .line 170
    iget-object v0, p0, Lcom/parrot/freeflight/core/academy/AcademyManager$2;->this$0:Lcom/parrot/freeflight/core/academy/AcademyManager;

    invoke-static {v0}, Lcom/parrot/freeflight/core/academy/AcademyManager;->access$700(Lcom/parrot/freeflight/core/academy/AcademyManager;)Lcom/parrot/freeflight/core/academy/DroneRegisterManager;

    move-result-object v0

    iget-object v1, p0, Lcom/parrot/freeflight/core/academy/AcademyManager$2;->this$0:Lcom/parrot/freeflight/core/academy/AcademyManager;

    invoke-static {v1}, Lcom/parrot/freeflight/core/academy/AcademyManager;->access$500(Lcom/parrot/freeflight/core/academy/AcademyManager;)Lcom/parrot/freeflight/core/academy/AcademyService;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/parrot/freeflight/core/academy/DroneRegisterManager;->onAcademyConnected(Lcom/parrot/freeflight/core/academy/AcademyService;)V

    .line 172
    iget-object v0, p0, Lcom/parrot/freeflight/core/academy/AcademyManager$2;->this$0:Lcom/parrot/freeflight/core/academy/AcademyManager;

    invoke-static {v0}, Lcom/parrot/freeflight/core/academy/AcademyManager;->access$100(Lcom/parrot/freeflight/core/academy/AcademyManager;)V

    .line 191
    :goto_0
    return-void

    .line 175
    :cond_0
    iget-object v0, p0, Lcom/parrot/freeflight/core/academy/AcademyManager$2;->this$0:Lcom/parrot/freeflight/core/academy/AcademyManager;

    invoke-static {v0}, Lcom/parrot/freeflight/core/academy/AcademyManager;->access$600(Lcom/parrot/freeflight/core/academy/AcademyManager;)Lcom/parrot/freeflight/core/academy/RunOfflineManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/parrot/freeflight/core/academy/RunOfflineManager;->onAcademyDisconnected()V

    .line 176
    iget-object v0, p0, Lcom/parrot/freeflight/core/academy/AcademyManager$2;->this$0:Lcom/parrot/freeflight/core/academy/AcademyManager;

    invoke-static {v0}, Lcom/parrot/freeflight/core/academy/AcademyManager;->access$700(Lcom/parrot/freeflight/core/academy/AcademyManager;)Lcom/parrot/freeflight/core/academy/DroneRegisterManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/parrot/freeflight/core/academy/DroneRegisterManager;->onAcademyDisconnected()V

    .line 178
    iget-object v0, p0, Lcom/parrot/freeflight/core/academy/AcademyManager$2;->this$0:Lcom/parrot/freeflight/core/academy/AcademyManager;

    invoke-static {v0}, Lcom/parrot/freeflight/core/academy/AcademyManager;->access$800(Lcom/parrot/freeflight/core/academy/AcademyManager;)Lcom/parrot/freeflight/core/academy/AcademyManager$DownloadAvatarTask;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 179
    iget-object v0, p0, Lcom/parrot/freeflight/core/academy/AcademyManager$2;->this$0:Lcom/parrot/freeflight/core/academy/AcademyManager;

    invoke-static {v0}, Lcom/parrot/freeflight/core/academy/AcademyManager;->access$800(Lcom/parrot/freeflight/core/academy/AcademyManager;)Lcom/parrot/freeflight/core/academy/AcademyManager$DownloadAvatarTask;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/parrot/freeflight/core/academy/AcademyManager$DownloadAvatarTask;->cancel(Z)Z

    .line 181
    :cond_1
    iget-object v0, p0, Lcom/parrot/freeflight/core/academy/AcademyManager$2;->this$0:Lcom/parrot/freeflight/core/academy/AcademyManager;

    invoke-static {v0, v2}, Lcom/parrot/freeflight/core/academy/AcademyManager;->access$002(Lcom/parrot/freeflight/core/academy/AcademyManager;Lcom/parrot/freeflight/core/academy/model/ARAcademyProfile;)Lcom/parrot/freeflight/core/academy/model/ARAcademyProfile;

    .line 182
    iget-object v0, p0, Lcom/parrot/freeflight/core/academy/AcademyManager$2;->this$0:Lcom/parrot/freeflight/core/academy/AcademyManager;

    invoke-static {v0, v2}, Lcom/parrot/freeflight/core/academy/AcademyManager;->access$902(Lcom/parrot/freeflight/core/academy/AcademyManager;Landroid/support/v4/graphics/drawable/RoundedBitmapDrawable;)Landroid/support/v4/graphics/drawable/RoundedBitmapDrawable;

    .line 183
    iget-object v0, p0, Lcom/parrot/freeflight/core/academy/AcademyManager$2;->this$0:Lcom/parrot/freeflight/core/academy/AcademyManager;

    invoke-static {v0, v2}, Lcom/parrot/freeflight/core/academy/AcademyManager;->access$202(Lcom/parrot/freeflight/core/academy/AcademyManager;Lcom/parrot/freeflight/core/academy/model/ARAcademyPilot;)Lcom/parrot/freeflight/core/academy/model/ARAcademyPilot;

    .line 184
    iget-object v0, p0, Lcom/parrot/freeflight/core/academy/AcademyManager$2;->this$0:Lcom/parrot/freeflight/core/academy/AcademyManager;

    invoke-static {v0, v2}, Lcom/parrot/freeflight/core/academy/AcademyManager;->access$1002(Lcom/parrot/freeflight/core/academy/AcademyManager;Ljava/util/List;)Ljava/util/List;

    .line 187
    iget-object v0, p0, Lcom/parrot/freeflight/core/academy/AcademyManager$2;->this$0:Lcom/parrot/freeflight/core/academy/AcademyManager;

    invoke-static {v0}, Lcom/parrot/freeflight/core/academy/AcademyManager;->access$1100(Lcom/parrot/freeflight/core/academy/AcademyManager;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/parrot/freeflight/core/academy/cache/Avatar;->clearCache(Landroid/content/Context;)V

    .line 189
    iget-object v0, p0, Lcom/parrot/freeflight/core/academy/AcademyManager$2;->this$0:Lcom/parrot/freeflight/core/academy/AcademyManager;

    invoke-static {v0}, Lcom/parrot/freeflight/core/academy/AcademyManager;->access$100(Lcom/parrot/freeflight/core/academy/AcademyManager;)V

    goto :goto_0
.end method
