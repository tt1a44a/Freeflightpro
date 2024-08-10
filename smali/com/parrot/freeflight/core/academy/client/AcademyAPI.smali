.class public interface abstract Lcom/parrot/freeflight/core/academy/client/AcademyAPI;
.super Ljava/lang/Object;
.source "AcademyAPI.java"


# virtual methods
.method public abstract addDrone(Lcom/parrot/freeflight/core/academy/model/ARAcademyDrone;)Lretrofit2/Call;
    .param p1    # Lcom/parrot/freeflight/core/academy/model/ARAcademyDrone;
        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/parrot/freeflight/core/academy/model/ARAcademyDrone;",
            ")",
            "Lretrofit2/Call",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "/api4/drones"
    .end annotation
.end method

.method public abstract deleteProfile(Lcom/parrot/freeflight/core/academy/model/ARAcademyProfile;)Lretrofit2/Call;
    .param p1    # Lcom/parrot/freeflight/core/academy/model/ARAcademyProfile;
        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/parrot/freeflight/core/academy/model/ARAcademyProfile;",
            ")",
            "Lretrofit2/Call",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/DELETE;
        value = "api4/profile"
    .end annotation
.end method

.method public abstract deleteRun(I)Lretrofit2/Call;
    .param p1    # I
        .annotation runtime Lretrofit2/http/Path;
            value = "runId"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lretrofit2/Call",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/DELETE;
        value = "/api4/runs/{runId}"
    .end annotation
.end method

.method public abstract getAllCountry()Lretrofit2/Call;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lretrofit2/Call",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/parrot/freeflight/core/academy/model/ARAcademyCountry;",
            ">;>;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/GET;
        value = "api4/countries"
    .end annotation
.end method

.method public abstract getPilot(I)Lretrofit2/Call;
    .param p1    # I
        .annotation runtime Lretrofit2/http/Path;
            value = "pilotId"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lretrofit2/Call",
            "<",
            "Lcom/parrot/freeflight/core/academy/model/ARAcademyPilot;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/GET;
        value = "api4/pilots/{pilotId}"
    .end annotation
.end method

.method public abstract getPilotByUsername(Ljava/lang/String;)Lretrofit2/Call;
    .param p1    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Path;
            value = "pilotUsername"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lretrofit2/Call",
            "<",
            "Lcom/parrot/freeflight/core/academy/model/ARAcademyPilot;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/GET;
        value = "/api4/pilots/username/{pilotUsername}"
    .end annotation
.end method

.method public abstract getProfile()Lretrofit2/Call;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lretrofit2/Call",
            "<",
            "Lcom/parrot/freeflight/core/academy/model/ARAcademyProfile;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/GET;
        value = "api4/profile"
    .end annotation
.end method

.method public abstract getRunDetails(I)Lretrofit2/Call;
    .param p1    # I
        .annotation runtime Lretrofit2/http/Path;
            value = "runId"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lretrofit2/Call",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/GET;
        value = "/api4/runs/{runId}/details"
    .end annotation
.end method

.method public abstract getRunUploadOffset(Ljava/lang/String;)Lretrofit2/Call;
    .param p1    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Path;
            value = "md5"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lretrofit2/Call",
            "<",
            "Lcom/parrot/freeflight/core/academy/model/ARAcademyOffset;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/GET;
        value = "api4/runs/upload/offset/{md5}"
    .end annotation
.end method

.method public abstract getRuns()Lretrofit2/Call;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lretrofit2/Call",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/parrot/freeflight/core/academy/model/ARAcademyRun;",
            ">;>;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/GET;
        value = "/api4/runs"
    .end annotation
.end method

.method public abstract postRunVideo(Ljava/lang/String;Lcom/parrot/freeflight/core/academy/model/ARAcademyRunMedia;)Lretrofit2/Call;
    .param p1    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Path;
            value = "uuid"
        .end annotation
    .end param
    .param p2    # Lcom/parrot/freeflight/core/academy/model/ARAcademyRunMedia;
        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/parrot/freeflight/core/academy/model/ARAcademyRunMedia;",
            ")",
            "Lretrofit2/Call",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "/api4/runs/uuid/{uuid}/videos/"
    .end annotation
.end method

.method public abstract resetPassword(Lcom/parrot/freeflight/core/academy/model/ARAcademyResetPassword;)Lretrofit2/Call;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/parrot/freeflight/core/academy/model/ARAcademyResetPassword;",
            ")",
            "Lretrofit2/Call",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "/api4/profile/password_reset"
    .end annotation
.end method

.method public abstract runToEmail(ILcom/parrot/freeflight/core/academy/model/ARAcademyRun;)Lretrofit2/Call;
    .param p1    # I
        .annotation runtime Lretrofit2/http/Path;
            value = "runId"
        .end annotation
    .end param
    .param p2    # Lcom/parrot/freeflight/core/academy/model/ARAcademyRun;
        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/parrot/freeflight/core/academy/model/ARAcademyRun;",
            ")",
            "Lretrofit2/Call",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "/api4/runs/{runId}/mailto/"
    .end annotation
.end method

.method public abstract runsGradeVisible(ILcom/parrot/freeflight/core/academy/model/ARAcademyRunGradeVisible;)Lretrofit2/Call;
    .param p1    # I
        .annotation runtime Lretrofit2/http/Path;
            value = "runId"
        .end annotation
    .end param
    .param p2    # Lcom/parrot/freeflight/core/academy/model/ARAcademyRunGradeVisible;
        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/parrot/freeflight/core/academy/model/ARAcademyRunGradeVisible;",
            ")",
            "Lretrofit2/Call",
            "<",
            "Lcom/parrot/freeflight/core/academy/model/ARAcademyRunGradeVisible;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "/api4/runs/{runId}"
    .end annotation
.end method

.method public abstract updateAvatar(Lokhttp3/MultipartBody$Part;)Lretrofit2/Call;
    .param p1    # Lokhttp3/MultipartBody$Part;
        .annotation runtime Lretrofit2/http/Part;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lokhttp3/MultipartBody$Part;",
            ")",
            "Lretrofit2/Call",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/Multipart;
    .end annotation

    .annotation runtime Lretrofit2/http/PUT;
        value = "/api4/profile/avatar"
    .end annotation
.end method

.method public abstract updateEmail(Lcom/parrot/freeflight/core/academy/model/ARAcademyEmail;)Lretrofit2/Call;
    .param p1    # Lcom/parrot/freeflight/core/academy/model/ARAcademyEmail;
        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/parrot/freeflight/core/academy/model/ARAcademyEmail;",
            ")",
            "Lretrofit2/Call",
            "<",
            "Lcom/parrot/freeflight/core/academy/model/ARAcademyEmail;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "/api4/pilots/email"
    .end annotation
.end method

.method public abstract updateProfile(Lcom/parrot/freeflight/core/academy/model/ARAcademyProfile;)Lretrofit2/Call;
    .param p1    # Lcom/parrot/freeflight/core/academy/model/ARAcademyProfile;
        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/parrot/freeflight/core/academy/model/ARAcademyProfile;",
            ")",
            "Lretrofit2/Call",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/PUT;
        value = "api4/profile"
    .end annotation
.end method

.method public abstract uploadRun(Ljava/lang/String;Lokhttp3/MultipartBody$Part;Lokhttp3/MultipartBody$Part;)Lretrofit2/Call;
    .param p1    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Header;
            value = "Content-Range"
        .end annotation
    .end param
    .param p2    # Lokhttp3/MultipartBody$Part;
        .annotation runtime Lretrofit2/http/Part;
        .end annotation
    .end param
    .param p3    # Lokhttp3/MultipartBody$Part;
        .annotation runtime Lretrofit2/http/Part;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lokhttp3/MultipartBody$Part;",
            "Lokhttp3/MultipartBody$Part;",
            ")",
            "Lretrofit2/Call",
            "<",
            "Lcom/google/gson/JsonElement;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/Multipart;
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "api4/runs/upload"
    .end annotation
.end method
