.class Lcom/parrot/freeflight/blackbox/BlackboxManager$1;
.super Ljava/lang/Object;
.source "BlackboxManager.java"

# interfaces
.implements Lcom/parrot/freeflight/core/academy/AcademyManager$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/parrot/freeflight/blackbox/BlackboxManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/parrot/freeflight/blackbox/BlackboxManager;


# direct methods
.method constructor <init>(Lcom/parrot/freeflight/blackbox/BlackboxManager;)V
    .locals 0
    .param p1, "this$0"    # Lcom/parrot/freeflight/blackbox/BlackboxManager;

    .prologue
    .line 71
    iput-object p1, p0, Lcom/parrot/freeflight/blackbox/BlackboxManager$1;->this$0:Lcom/parrot/freeflight/blackbox/BlackboxManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChange()V
    .locals 3

    .prologue
    .line 74
    iget-object v2, p0, Lcom/parrot/freeflight/blackbox/BlackboxManager$1;->this$0:Lcom/parrot/freeflight/blackbox/BlackboxManager;

    invoke-static {v2}, Lcom/parrot/freeflight/blackbox/BlackboxManager;->access$000(Lcom/parrot/freeflight/blackbox/BlackboxManager;)Lcom/parrot/freeflight/core/academy/AcademyManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/parrot/freeflight/core/academy/AcademyManager;->getProfile()Lcom/parrot/freeflight/core/academy/model/ARAcademyProfile;

    move-result-object v1

    .line 75
    .local v1, "profile":Lcom/parrot/freeflight/core/academy/model/ARAcademyProfile;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/parrot/freeflight/core/academy/model/ARAcademyProfile;->getUser()Lcom/parrot/freeflight/core/academy/model/ARAcademyUser;

    move-result-object v2

    invoke-virtual {v2}, Lcom/parrot/freeflight/core/academy/model/ARAcademyUser;->getEmail()Ljava/lang/String;

    move-result-object v0

    .line 76
    .local v0, "academyId":Ljava/lang/String;
    :goto_0
    iget-object v2, p0, Lcom/parrot/freeflight/blackbox/BlackboxManager$1;->this$0:Lcom/parrot/freeflight/blackbox/BlackboxManager;

    invoke-static {v2}, Lcom/parrot/freeflight/blackbox/BlackboxManager;->access$100(Lcom/parrot/freeflight/blackbox/BlackboxManager;)Lcom/parrot/freeflight/blackbox/recorder/BlackboxRecorder;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/parrot/freeflight/blackbox/recorder/BlackboxRecorder;->updateAcademyId(Ljava/lang/String;)V

    .line 77
    return-void

    .line 75
    .end local v0    # "academyId":Ljava/lang/String;
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
