.class public Lorg/apache/commons/lang3/time/DurationFormatUtils;
.super Ljava/lang/Object;
.source "DurationFormatUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/lang3/time/DurationFormatUtils$Token;
    }
.end annotation


# static fields
.field static final H:Ljava/lang/String; = "H"

.field private static final HOURS_PER_DAY:I = 0x18

.field public static final ISO_EXTENDED_FORMAT_PATTERN:Ljava/lang/String; = "\'P\'yyyy\'Y\'M\'M\'d\'DT\'H\'H\'m\'M\'s.SSS\'S\'"

.field static final M:Ljava/lang/String; = "M"

.field private static final MINUTES_PER_HOUR:I = 0x3c

.field static final S:Ljava/lang/String; = "S"

.field private static final SECONDS_PER_MINUTES:I = 0x3c

.field static final d:Ljava/lang/String; = "d"

.field static final m:Ljava/lang/String; = "m"

.field static final s:Ljava/lang/String; = "s"

.field static final y:Ljava/lang/String; = "y"


# direct methods
.method public constructor <init>()V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 782
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 784
    return-void
.end method

.method static format([Lorg/apache/commons/lang3/time/DurationFormatUtils$Token;JJJJJJJZ)Ljava/lang/String;
    .locals 30
    .param p0, "tokens"    # [Lorg/apache/commons/lang3/time/DurationFormatUtils$Token;
    .param p1, "years"    # J
    .param p3, "months"    # J
    .param p5, "days"    # J
    .param p7, "hours"    # J
    .param p9, "minutes"    # J
    .param p11, "seconds"    # J
    .param p13, "milliseconds"    # J
    .param p15, "padWithZeros"    # Z

    .line 241
    move-object/from16 v0, p0

    move-wide/from16 v1, p1

    move-wide/from16 v3, p3

    move-wide/from16 v5, p5

    move-wide/from16 v7, p7

    move-wide/from16 v9, p9

    move-wide/from16 v11, p11

    move-wide/from16 v13, p13

    move/from16 v15, p15

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v17, v16

    .line 242
    .local v17, "buffer":Ljava/lang/StringBuilder;
    const/16 v16, 0x0

    .line 243
    .local v16, "lastOutputSeconds":Z
    const/16 v18, 0x0

    .line 244
    .local v18, "lastOutputZero":Z
    const/16 v19, -0x1

    .line 245
    .local v19, "optionalStart":I
    const/16 v20, 0x0

    .line 246
    .local v20, "firstOptionalNonLiteral":Z
    const/16 v21, -0x1

    .line 247
    .local v21, "optionalIndex":I
    const/16 v22, 0x0

    .line 248
    .local v22, "inOptional":Z
    array-length v13, v0

    move/from16 v14, v21

    const/4 v11, 0x0

    .end local v21    # "optionalIndex":I
    .local v14, "optionalIndex":I
    :goto_0
    if-ge v11, v13, :cond_24

    aget-object v12, v0, v11

    .line 249
    .local v12, "token":Lorg/apache/commons/lang3/time/DurationFormatUtils$Token;
    invoke-virtual {v12}, Lorg/apache/commons/lang3/time/DurationFormatUtils$Token;->getValue()Ljava/lang/Object;

    move-result-object v0

    .line 250
    .local v0, "value":Ljava/lang/Object;
    move/from16 v23, v11

    instance-of v11, v0, Ljava/lang/StringBuilder;

    .line 251
    .local v11, "isLiteral":Z
    move/from16 v24, v13

    invoke-virtual {v12}, Lorg/apache/commons/lang3/time/DurationFormatUtils$Token;->getCount()I

    move-result v13

    .line 252
    .local v13, "count":I
    invoke-static {v12}, Lorg/apache/commons/lang3/time/DurationFormatUtils$Token;->access$000(Lorg/apache/commons/lang3/time/DurationFormatUtils$Token;)I

    move-result v9

    if-eq v14, v9, :cond_1

    .line 253
    invoke-static {v12}, Lorg/apache/commons/lang3/time/DurationFormatUtils$Token;->access$000(Lorg/apache/commons/lang3/time/DurationFormatUtils$Token;)I

    move-result v9

    .line 254
    .end local v14    # "optionalIndex":I
    .local v9, "optionalIndex":I
    const/4 v10, -0x1

    if-le v9, v10, :cond_0

    .line 256
    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->length()I

    move-result v10

    .line 257
    .end local v19    # "optionalStart":I
    .local v10, "optionalStart":I
    const/16 v18, 0x0

    .line 258
    const/4 v14, 0x1

    .line 259
    .end local v22    # "inOptional":Z
    .local v14, "inOptional":Z
    const/16 v20, 0x0

    move/from16 v22, v14

    move v14, v9

    goto :goto_1

    .line 262
    .end local v10    # "optionalStart":I
    .end local v14    # "inOptional":Z
    .restart local v19    # "optionalStart":I
    .restart local v22    # "inOptional":Z
    :cond_0
    const/4 v10, 0x0

    move v14, v9

    move/from16 v22, v10

    move/from16 v10, v19

    .end local v22    # "inOptional":Z
    .local v10, "inOptional":Z
    goto :goto_1

    .line 252
    .end local v9    # "optionalIndex":I
    .end local v10    # "inOptional":Z
    .local v14, "optionalIndex":I
    .restart local v22    # "inOptional":Z
    :cond_1
    move/from16 v10, v19

    .line 265
    .end local v19    # "optionalStart":I
    .local v10, "optionalStart":I
    :goto_1
    if-eqz v11, :cond_4

    .line 266
    if-eqz v22, :cond_3

    if-nez v18, :cond_2

    goto :goto_2

    :cond_2
    move-wide/from16 v2, p11

    move-wide/from16 v4, p13

    move-object/from16 v25, v12

    move v9, v15

    move-object/from16 v12, v17

    move/from16 v19, v23

    move/from16 v6, v24

    move-object/from16 v24, v0

    move/from16 v17, v14

    move-wide/from16 v14, p9

    goto/16 :goto_13

    .line 267
    :cond_3
    :goto_2
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    move-object/from16 v25, v12

    move-object/from16 v12, v17

    .end local v17    # "buffer":Ljava/lang/StringBuilder;
    .local v12, "buffer":Ljava/lang/StringBuilder;
    .local v25, "token":Lorg/apache/commons/lang3/time/DurationFormatUtils$Token;
    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide/from16 v2, p11

    move-wide/from16 v4, p13

    move/from16 v17, v14

    move v9, v15

    move/from16 v19, v23

    move/from16 v6, v24

    move-wide/from16 v14, p9

    move-object/from16 v24, v0

    goto/16 :goto_13

    .line 269
    .end local v25    # "token":Lorg/apache/commons/lang3/time/DurationFormatUtils$Token;
    .local v12, "token":Lorg/apache/commons/lang3/time/DurationFormatUtils$Token;
    .restart local v17    # "buffer":Ljava/lang/StringBuilder;
    :cond_4
    move-object/from16 v25, v12

    move-object/from16 v12, v17

    .end local v17    # "buffer":Ljava/lang/StringBuilder;
    .local v12, "buffer":Ljava/lang/StringBuilder;
    .restart local v25    # "token":Lorg/apache/commons/lang3/time/DurationFormatUtils$Token;
    const-string v9, "y"

    invoke-virtual {v0, v9}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v9

    const-wide/16 v26, 0x0

    move/from16 v17, v14

    .end local v14    # "optionalIndex":I
    .local v17, "optionalIndex":I
    if-eqz v9, :cond_8

    .line 270
    const/4 v9, 0x0

    .line 271
    .end local v16    # "lastOutputSeconds":Z
    .local v9, "lastOutputSeconds":Z
    cmp-long v16, v1, v26

    if-nez v16, :cond_5

    const/4 v14, 0x1

    goto :goto_3

    :cond_5
    const/4 v14, 0x0

    .line 272
    .end local v18    # "lastOutputZero":Z
    .local v14, "lastOutputZero":Z
    :goto_3
    if-eqz v22, :cond_7

    if-nez v14, :cond_6

    goto :goto_4

    :cond_6
    move/from16 v16, v9

    goto :goto_5

    .line 273
    :cond_7
    :goto_4
    move/from16 v16, v9

    .end local v9    # "lastOutputSeconds":Z
    .restart local v16    # "lastOutputSeconds":Z
    invoke-static {v1, v2, v15, v13}, Lorg/apache/commons/lang3/time/DurationFormatUtils;->paddedValue(JZI)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 319
    :goto_5
    move-wide/from16 v2, p11

    move-wide/from16 v4, p13

    move/from16 v18, v14

    move v9, v15

    move/from16 v19, v23

    move/from16 v6, v24

    move-wide/from16 v14, p9

    move-object/from16 v24, v0

    goto/16 :goto_13

    .line 275
    .end local v14    # "lastOutputZero":Z
    .restart local v18    # "lastOutputZero":Z
    :cond_8
    const-string v9, "M"

    invoke-virtual {v0, v9}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_c

    .line 276
    const/4 v9, 0x0

    .line 277
    .end local v16    # "lastOutputSeconds":Z
    .restart local v9    # "lastOutputSeconds":Z
    cmp-long v16, v3, v26

    if-nez v16, :cond_9

    const/4 v14, 0x1

    goto :goto_6

    :cond_9
    const/4 v14, 0x0

    .line 278
    .end local v18    # "lastOutputZero":Z
    .restart local v14    # "lastOutputZero":Z
    :goto_6
    if-eqz v22, :cond_a

    if-nez v14, :cond_b

    .line 279
    :cond_a
    invoke-static {v3, v4, v15, v13}, Lorg/apache/commons/lang3/time/DurationFormatUtils;->paddedValue(JZI)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 319
    :cond_b
    move-wide/from16 v2, p11

    move-wide/from16 v4, p13

    move/from16 v16, v9

    move/from16 v18, v14

    move v9, v15

    move/from16 v19, v23

    move/from16 v6, v24

    move-wide/from16 v14, p9

    move-object/from16 v24, v0

    goto/16 :goto_13

    .line 281
    .end local v9    # "lastOutputSeconds":Z
    .end local v14    # "lastOutputZero":Z
    .restart local v16    # "lastOutputSeconds":Z
    .restart local v18    # "lastOutputZero":Z
    :cond_c
    const-string v1, "d"

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_10

    .line 282
    const/4 v1, 0x0

    .line 283
    .end local v16    # "lastOutputSeconds":Z
    .local v1, "lastOutputSeconds":Z
    cmp-long v2, v5, v26

    if-nez v2, :cond_d

    const/4 v14, 0x1

    goto :goto_7

    :cond_d
    const/4 v14, 0x0

    :goto_7
    move v2, v14

    .line 284
    .end local v18    # "lastOutputZero":Z
    .local v2, "lastOutputZero":Z
    if-eqz v22, :cond_e

    if-nez v2, :cond_f

    .line 285
    :cond_e
    invoke-static {v5, v6, v15, v13}, Lorg/apache/commons/lang3/time/DurationFormatUtils;->paddedValue(JZI)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 319
    :cond_f
    :goto_8
    move-wide/from16 v4, p13

    move/from16 v16, v1

    move/from16 v18, v2

    move v9, v15

    move/from16 v19, v23

    move/from16 v6, v24

    move-wide/from16 v14, p9

    move-wide/from16 v2, p11

    move-object/from16 v24, v0

    goto/16 :goto_13

    .line 287
    .end local v1    # "lastOutputSeconds":Z
    .end local v2    # "lastOutputZero":Z
    .restart local v16    # "lastOutputSeconds":Z
    .restart local v18    # "lastOutputZero":Z
    :cond_10
    const-string v1, "H"

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_13

    .line 288
    const/4 v1, 0x0

    .line 289
    .end local v16    # "lastOutputSeconds":Z
    .restart local v1    # "lastOutputSeconds":Z
    cmp-long v2, v7, v26

    if-nez v2, :cond_11

    const/4 v14, 0x1

    goto :goto_9

    :cond_11
    const/4 v14, 0x0

    :goto_9
    move v2, v14

    .line 290
    .end local v18    # "lastOutputZero":Z
    .restart local v2    # "lastOutputZero":Z
    if-eqz v22, :cond_12

    if-nez v2, :cond_f

    .line 291
    :cond_12
    invoke-static {v7, v8, v15, v13}, Lorg/apache/commons/lang3/time/DurationFormatUtils;->paddedValue(JZI)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_8

    .line 293
    .end local v1    # "lastOutputSeconds":Z
    .end local v2    # "lastOutputZero":Z
    .restart local v16    # "lastOutputSeconds":Z
    .restart local v18    # "lastOutputZero":Z
    :cond_13
    const-string v1, "m"

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_17

    .line 294
    const/4 v1, 0x0

    .line 295
    .end local v16    # "lastOutputSeconds":Z
    .restart local v1    # "lastOutputSeconds":Z
    move-wide/from16 v14, p9

    cmp-long v9, v14, v26

    if-nez v9, :cond_14

    const/4 v2, 0x1

    goto :goto_a

    :cond_14
    const/4 v2, 0x0

    .line 296
    .end local v18    # "lastOutputZero":Z
    .restart local v2    # "lastOutputZero":Z
    :goto_a
    if-eqz v22, :cond_16

    if-nez v2, :cond_15

    goto :goto_b

    :cond_15
    move/from16 v9, p15

    move/from16 v16, v1

    goto :goto_c

    .line 297
    :cond_16
    :goto_b
    move/from16 v9, p15

    move/from16 v16, v1

    .end local v1    # "lastOutputSeconds":Z
    .restart local v16    # "lastOutputSeconds":Z
    invoke-static {v14, v15, v9, v13}, Lorg/apache/commons/lang3/time/DurationFormatUtils;->paddedValue(JZI)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 319
    :goto_c
    move-wide/from16 v4, p13

    move/from16 v18, v2

    move/from16 v19, v23

    move/from16 v6, v24

    move-wide/from16 v2, p11

    move-object/from16 v24, v0

    goto/16 :goto_13

    .line 299
    .end local v2    # "lastOutputZero":Z
    .restart local v18    # "lastOutputZero":Z
    :cond_17
    move v9, v15

    move-wide/from16 v14, p9

    const-string v1, "s"

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1b

    .line 300
    const/4 v1, 0x1

    .line 301
    .end local v16    # "lastOutputSeconds":Z
    .restart local v1    # "lastOutputSeconds":Z
    move-wide/from16 v2, p11

    move/from16 v19, v23

    cmp-long v16, v2, v26

    if-nez v16, :cond_18

    const/4 v4, 0x1

    goto :goto_d

    :cond_18
    const/4 v4, 0x0

    .line 302
    .end local v18    # "lastOutputZero":Z
    .local v4, "lastOutputZero":Z
    :goto_d
    if-eqz v22, :cond_1a

    if-nez v4, :cond_19

    goto :goto_e

    :cond_19
    move/from16 v16, v1

    goto :goto_f

    .line 303
    :cond_1a
    :goto_e
    move/from16 v16, v1

    .end local v1    # "lastOutputSeconds":Z
    .restart local v16    # "lastOutputSeconds":Z
    invoke-static {v2, v3, v9, v13}, Lorg/apache/commons/lang3/time/DurationFormatUtils;->paddedValue(JZI)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 319
    :goto_f
    move/from16 v18, v4

    move/from16 v6, v24

    move-wide/from16 v4, p13

    move-object/from16 v24, v0

    goto :goto_13

    .line 305
    .end local v4    # "lastOutputZero":Z
    .restart local v18    # "lastOutputZero":Z
    :cond_1b
    move-wide/from16 v2, p11

    move/from16 v19, v23

    const-string v1, "S"

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_21

    .line 306
    move-wide/from16 v4, p13

    move/from16 v6, v24

    cmp-long v23, v4, v26

    if-nez v23, :cond_1c

    const/16 v23, 0x1

    goto :goto_10

    :cond_1c
    const/16 v23, 0x0

    :goto_10
    move/from16 v18, v23

    .line 307
    if-eqz v22, :cond_1e

    if-nez v18, :cond_1d

    goto :goto_11

    :cond_1d
    move-object/from16 v24, v0

    goto :goto_12

    .line 308
    :cond_1e
    :goto_11
    if-eqz v16, :cond_20

    .line 310
    const/4 v1, 0x3

    if-eqz v9, :cond_1f

    invoke-static {v1, v13}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 311
    .local v1, "width":I
    :cond_1f
    move-object/from16 v24, v0

    const/4 v0, 0x1

    .end local v0    # "value":Ljava/lang/Object;
    .local v24, "value":Ljava/lang/Object;
    invoke-static {v4, v5, v0, v1}, Lorg/apache/commons/lang3/time/DurationFormatUtils;->paddedValue(JZI)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 312
    .end local v1    # "width":I
    goto :goto_12

    .line 313
    .end local v24    # "value":Ljava/lang/Object;
    .restart local v0    # "value":Ljava/lang/Object;
    :cond_20
    move-object/from16 v24, v0

    .end local v0    # "value":Ljava/lang/Object;
    .restart local v24    # "value":Ljava/lang/Object;
    invoke-static {v4, v5, v9, v13}, Lorg/apache/commons/lang3/time/DurationFormatUtils;->paddedValue(JZI)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 316
    :goto_12
    const/4 v0, 0x0

    move/from16 v16, v0

    .end local v16    # "lastOutputSeconds":Z
    .local v0, "lastOutputSeconds":Z
    goto :goto_13

    .line 305
    .end local v24    # "value":Ljava/lang/Object;
    .local v0, "value":Ljava/lang/Object;
    .restart local v16    # "lastOutputSeconds":Z
    :cond_21
    move-wide/from16 v4, p13

    move/from16 v6, v24

    move-object/from16 v24, v0

    .line 319
    .end local v0    # "value":Ljava/lang/Object;
    .restart local v24    # "value":Ljava/lang/Object;
    :goto_13
    if-eqz v22, :cond_23

    if-nez v11, :cond_23

    if-nez v20, :cond_23

    .line 320
    const/4 v0, 0x1

    .line 321
    .end local v20    # "firstOptionalNonLiteral":Z
    .local v0, "firstOptionalNonLiteral":Z
    if-eqz v18, :cond_22

    .line 322
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    invoke-virtual {v12, v10, v1}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 248
    .end local v11    # "isLiteral":Z
    .end local v13    # "count":I
    .end local v24    # "value":Ljava/lang/Object;
    .end local v25    # "token":Lorg/apache/commons/lang3/time/DurationFormatUtils$Token;
    :cond_22
    move/from16 v20, v0

    .end local v0    # "firstOptionalNonLiteral":Z
    .restart local v20    # "firstOptionalNonLiteral":Z
    :cond_23
    add-int/lit8 v11, v19, 0x1

    move-object/from16 v0, p0

    move-wide/from16 v1, p1

    move-wide/from16 v3, p3

    move v13, v6

    move/from16 v19, v10

    move-wide/from16 v5, p5

    move-wide/from16 v28, v14

    move v15, v9

    move-wide/from16 v9, v28

    move/from16 v14, v17

    move-object/from16 v17, v12

    goto/16 :goto_0

    .line 326
    .end local v10    # "optionalStart":I
    .end local v12    # "buffer":Ljava/lang/StringBuilder;
    .local v14, "optionalIndex":I
    .local v17, "buffer":Ljava/lang/StringBuilder;
    .restart local v19    # "optionalStart":I
    :cond_24
    move-object/from16 v12, v17

    .end local v17    # "buffer":Ljava/lang/StringBuilder;
    .restart local v12    # "buffer":Ljava/lang/StringBuilder;
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static formatDuration(JLjava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "durationMillis"    # J
    .param p2, "format"    # Ljava/lang/String;

    .line 341
    const/4 v0, 0x1

    invoke-static {p0, p1, p2, v0}, Lorg/apache/commons/lang3/time/DurationFormatUtils;->formatDuration(JLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static formatDuration(JLjava/lang/String;Z)Ljava/lang/String;
    .locals 27
    .param p0, "durationMillis"    # J
    .param p2, "format"    # Ljava/lang/String;
    .param p3, "padWithZeros"    # Z

    .line 358
    const-wide v2, 0x7fffffffffffffffL

    const-string v6, "durationMillis must not be negative"

    const-wide/16 v0, 0x0

    move-wide/from16 v4, p0

    invoke-static/range {v0 .. v6}, Lorg/apache/commons/lang3/Validate;->inclusiveBetween(JJJLjava/lang/String;)V

    .line 360
    invoke-static/range {p2 .. p2}, Lorg/apache/commons/lang3/time/DurationFormatUtils;->lexx(Ljava/lang/String;)[Lorg/apache/commons/lang3/time/DurationFormatUtils$Token;

    move-result-object v0

    .line 362
    .local v0, "tokens":[Lorg/apache/commons/lang3/time/DurationFormatUtils$Token;
    const-wide/16 v1, 0x0

    .line 363
    .local v1, "days":J
    const-wide/16 v3, 0x0

    .line 364
    .local v3, "hours":J
    const-wide/16 v5, 0x0

    .line 365
    .local v5, "minutes":J
    const-wide/16 v7, 0x0

    .line 366
    .local v7, "seconds":J
    move-wide/from16 v9, p0

    .line 368
    .local v9, "milliseconds":J
    const-string v11, "d"

    invoke-static {v0, v11}, Lorg/apache/commons/lang3/time/DurationFormatUtils$Token;->containsTokenWithValue([Lorg/apache/commons/lang3/time/DurationFormatUtils$Token;Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_0

    .line 369
    const-wide/32 v11, 0x5265c00

    div-long v1, v9, v11

    .line 370
    mul-long/2addr v11, v1

    sub-long/2addr v9, v11

    .line 372
    :cond_0
    const-string v11, "H"

    invoke-static {v0, v11}, Lorg/apache/commons/lang3/time/DurationFormatUtils$Token;->containsTokenWithValue([Lorg/apache/commons/lang3/time/DurationFormatUtils$Token;Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_1

    .line 373
    const-wide/32 v11, 0x36ee80

    div-long v3, v9, v11

    .line 374
    mul-long/2addr v11, v3

    sub-long/2addr v9, v11

    .line 376
    :cond_1
    const-string v11, "m"

    invoke-static {v0, v11}, Lorg/apache/commons/lang3/time/DurationFormatUtils$Token;->containsTokenWithValue([Lorg/apache/commons/lang3/time/DurationFormatUtils$Token;Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_2

    .line 377
    const-wide/32 v11, 0xea60

    div-long v5, v9, v11

    .line 378
    mul-long/2addr v11, v5

    sub-long/2addr v9, v11

    .line 380
    :cond_2
    const-string v11, "s"

    invoke-static {v0, v11}, Lorg/apache/commons/lang3/time/DurationFormatUtils$Token;->containsTokenWithValue([Lorg/apache/commons/lang3/time/DurationFormatUtils$Token;Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_3

    .line 381
    const-wide/16 v11, 0x3e8

    div-long v7, v9, v11

    .line 382
    mul-long/2addr v11, v7

    sub-long/2addr v9, v11

    move-wide/from16 v23, v7

    move-wide/from16 v25, v9

    goto :goto_0

    .line 380
    :cond_3
    move-wide/from16 v23, v7

    move-wide/from16 v25, v9

    .line 385
    .end local v7    # "seconds":J
    .end local v9    # "milliseconds":J
    .local v23, "seconds":J
    .local v25, "milliseconds":J
    :goto_0
    const-wide/16 v8, 0x0

    const-wide/16 v10, 0x0

    move-object v7, v0

    move-wide v12, v1

    move-wide v14, v3

    move-wide/from16 v16, v5

    move-wide/from16 v18, v23

    move-wide/from16 v20, v25

    move/from16 v22, p3

    invoke-static/range {v7 .. v22}, Lorg/apache/commons/lang3/time/DurationFormatUtils;->format([Lorg/apache/commons/lang3/time/DurationFormatUtils$Token;JJJJJJJZ)Ljava/lang/String;

    move-result-object v7

    return-object v7
.end method

.method public static formatDurationHMS(J)Ljava/lang/String;
    .locals 1
    .param p0, "durationMillis"    # J

    .line 398
    const-string v0, "HH:mm:ss.SSS"

    invoke-static {p0, p1, v0}, Lorg/apache/commons/lang3/time/DurationFormatUtils;->formatDuration(JLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static formatDurationISO(J)Ljava/lang/String;
    .locals 2
    .param p0, "durationMillis"    # J

    .line 414
    const-string v0, "\'P\'yyyy\'Y\'M\'M\'d\'DT\'H\'H\'m\'M\'s.SSS\'S\'"

    const/4 v1, 0x0

    invoke-static {p0, p1, v0, v1}, Lorg/apache/commons/lang3/time/DurationFormatUtils;->formatDuration(JLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static formatDurationWords(JZZ)Ljava/lang/String;
    .locals 9
    .param p0, "durationMillis"    # J
    .param p2, "suppressLeadingZeroElements"    # Z
    .param p3, "suppressTrailingZeroElements"    # Z

    .line 437
    const-string v0, "d\' days \'H\' hours \'m\' minutes \'s\' seconds\'"

    invoke-static {p0, p1, v0}, Lorg/apache/commons/lang3/time/DurationFormatUtils;->formatDuration(JLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 438
    .local v0, "duration":Ljava/lang/String;
    const-string v1, " 0 minutes"

    const-string v2, " 0 hours"

    const-string v3, " 0 days"

    const-string v4, " "

    const-string v5, ""

    if-eqz p2, :cond_1

    .line 440
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 441
    invoke-static {v0, v3, v5}, Lorg/apache/commons/lang3/StringUtils;->replaceOnce(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 442
    .local v6, "tmp":Ljava/lang/String;
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v7

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v8

    if-eq v7, v8, :cond_0

    .line 443
    move-object v0, v6

    .line 444
    invoke-static {v0, v2, v5}, Lorg/apache/commons/lang3/StringUtils;->replaceOnce(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 445
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v7

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v8

    if-eq v7, v8, :cond_0

    .line 446
    move-object v0, v6

    .line 447
    invoke-static {v0, v1, v5}, Lorg/apache/commons/lang3/StringUtils;->replaceOnce(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 448
    move-object v0, v6

    .line 451
    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_1

    .line 453
    const/4 v7, 0x1

    invoke-virtual {v0, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 456
    .end local v6    # "tmp":Ljava/lang/String;
    :cond_1
    if-eqz p3, :cond_2

    .line 457
    const-string v6, " 0 seconds"

    invoke-static {v0, v6, v5}, Lorg/apache/commons/lang3/StringUtils;->replaceOnce(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 458
    .restart local v6    # "tmp":Ljava/lang/String;
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v7

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v8

    if-eq v7, v8, :cond_2

    .line 459
    move-object v0, v6

    .line 460
    invoke-static {v0, v1, v5}, Lorg/apache/commons/lang3/StringUtils;->replaceOnce(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 461
    .end local v6    # "tmp":Ljava/lang/String;
    .local v1, "tmp":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v6

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v7

    if-eq v6, v7, :cond_2

    .line 462
    move-object v0, v1

    .line 463
    invoke-static {v0, v2, v5}, Lorg/apache/commons/lang3/StringUtils;->replaceOnce(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 464
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v6

    if-eq v2, v6, :cond_2

    .line 465
    invoke-static {v1, v3, v5}, Lorg/apache/commons/lang3/StringUtils;->replaceOnce(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 471
    .end local v1    # "tmp":Ljava/lang/String;
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 472
    const-string v1, " 1 seconds"

    const-string v2, " 1 second"

    invoke-static {v0, v1, v2}, Lorg/apache/commons/lang3/StringUtils;->replaceOnce(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 473
    const-string v1, " 1 minutes"

    const-string v2, " 1 minute"

    invoke-static {v0, v1, v2}, Lorg/apache/commons/lang3/StringUtils;->replaceOnce(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 474
    const-string v1, " 1 hours"

    const-string v2, " 1 hour"

    invoke-static {v0, v1, v2}, Lorg/apache/commons/lang3/StringUtils;->replaceOnce(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 475
    const-string v1, " 1 days"

    const-string v2, " 1 day"

    invoke-static {v0, v1, v2}, Lorg/apache/commons/lang3/StringUtils;->replaceOnce(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 476
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static formatPeriod(JJLjava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p0, "startMillis"    # J
    .param p2, "endMillis"    # J
    .param p4, "format"    # Ljava/lang/String;

    .line 490
    const/4 v5, 0x1

    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v6

    move-wide v0, p0

    move-wide v2, p2

    move-object v4, p4

    invoke-static/range {v0 .. v6}, Lorg/apache/commons/lang3/time/DurationFormatUtils;->formatPeriod(JJLjava/lang/String;ZLjava/util/TimeZone;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static formatPeriod(JJLjava/lang/String;ZLjava/util/TimeZone;)Ljava/lang/String;
    .locals 30
    .param p0, "startMillis"    # J
    .param p2, "endMillis"    # J
    .param p4, "format"    # Ljava/lang/String;
    .param p5, "padWithZeros"    # Z
    .param p6, "timezone"    # Ljava/util/TimeZone;

    .line 519
    move-wide/from16 v0, p0

    move-wide/from16 v2, p2

    cmp-long v4, v0, v2

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-gtz v4, :cond_0

    move v4, v6

    goto :goto_0

    :cond_0
    move v4, v5

    :goto_0
    const-string v7, "startMillis must not be greater than endMillis"

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v4, v7, v5}, Lorg/apache/commons/lang3/Validate;->isTrue(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 527
    invoke-static/range {p4 .. p4}, Lorg/apache/commons/lang3/time/DurationFormatUtils;->lexx(Ljava/lang/String;)[Lorg/apache/commons/lang3/time/DurationFormatUtils$Token;

    move-result-object v4

    .line 531
    .local v4, "tokens":[Lorg/apache/commons/lang3/time/DurationFormatUtils$Token;
    invoke-static/range {p6 .. p6}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object v5

    .line 532
    .local v5, "start":Ljava/util/Calendar;
    new-instance v7, Ljava/util/Date;

    invoke-direct {v7, v0, v1}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v5, v7}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 533
    invoke-static/range {p6 .. p6}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object v7

    .line 534
    .local v7, "end":Ljava/util/Calendar;
    new-instance v8, Ljava/util/Date;

    invoke-direct {v8, v2, v3}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v7, v8}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 537
    const/16 v8, 0xe

    invoke-virtual {v7, v8}, Ljava/util/Calendar;->get(I)I

    move-result v9

    invoke-virtual {v5, v8}, Ljava/util/Calendar;->get(I)I

    move-result v8

    sub-int/2addr v9, v8

    int-to-long v8, v9

    .line 538
    .local v8, "milliseconds":J
    const/16 v10, 0xd

    invoke-virtual {v7, v10}, Ljava/util/Calendar;->get(I)I

    move-result v11

    invoke-virtual {v5, v10}, Ljava/util/Calendar;->get(I)I

    move-result v10

    sub-int/2addr v11, v10

    .line 539
    .local v11, "seconds":I
    const/16 v10, 0xc

    invoke-virtual {v7, v10}, Ljava/util/Calendar;->get(I)I

    move-result v12

    invoke-virtual {v5, v10}, Ljava/util/Calendar;->get(I)I

    move-result v10

    sub-int/2addr v12, v10

    .line 540
    .local v12, "minutes":I
    const/16 v10, 0xb

    invoke-virtual {v7, v10}, Ljava/util/Calendar;->get(I)I

    move-result v13

    invoke-virtual {v5, v10}, Ljava/util/Calendar;->get(I)I

    move-result v10

    sub-int/2addr v13, v10

    .line 541
    .local v13, "hours":I
    const/4 v10, 0x5

    invoke-virtual {v7, v10}, Ljava/util/Calendar;->get(I)I

    move-result v14

    invoke-virtual {v5, v10}, Ljava/util/Calendar;->get(I)I

    move-result v15

    sub-int/2addr v14, v15

    .line 542
    .local v14, "days":I
    const/4 v15, 0x2

    invoke-virtual {v7, v15}, Ljava/util/Calendar;->get(I)I

    move-result v16

    invoke-virtual {v5, v15}, Ljava/util/Calendar;->get(I)I

    move-result v17

    sub-int v16, v16, v17

    .line 543
    .local v16, "months":I
    invoke-virtual {v7, v6}, Ljava/util/Calendar;->get(I)I

    move-result v17

    invoke-virtual {v5, v6}, Ljava/util/Calendar;->get(I)I

    move-result v18

    sub-int v17, v17, v18

    .line 546
    .local v17, "years":I
    :goto_1
    const-wide/16 v18, 0x0

    cmp-long v18, v8, v18

    const-wide/16 v19, 0x3e8

    if-gez v18, :cond_1

    .line 547
    add-long v8, v8, v19

    .line 548
    add-int/lit8 v11, v11, -0x1

    goto :goto_1

    .line 550
    :cond_1
    :goto_2
    if-gez v11, :cond_2

    .line 551
    add-int/lit8 v11, v11, 0x3c

    .line 552
    add-int/lit8 v12, v12, -0x1

    goto :goto_2

    .line 554
    :cond_2
    :goto_3
    if-gez v12, :cond_3

    .line 555
    add-int/lit8 v12, v12, 0x3c

    .line 556
    add-int/lit8 v13, v13, -0x1

    goto :goto_3

    .line 558
    :cond_3
    :goto_4
    if-gez v13, :cond_4

    .line 559
    add-int/lit8 v13, v13, 0x18

    .line 560
    add-int/lit8 v14, v14, -0x1

    goto :goto_4

    .line 563
    :cond_4
    const-string v6, "M"

    invoke-static {v4, v6}, Lorg/apache/commons/lang3/time/DurationFormatUtils$Token;->containsTokenWithValue([Lorg/apache/commons/lang3/time/DurationFormatUtils$Token;Ljava/lang/Object;)Z

    move-result v6

    const-string v15, "y"

    if-eqz v6, :cond_9

    .line 564
    :goto_5
    if-gez v14, :cond_5

    .line 565
    invoke-virtual {v5, v10}, Ljava/util/Calendar;->getActualMaximum(I)I

    move-result v6

    add-int/2addr v14, v6

    .line 566
    add-int/lit8 v16, v16, -0x1

    .line 567
    const/4 v6, 0x2

    const/4 v10, 0x1

    invoke-virtual {v5, v6, v10}, Ljava/util/Calendar;->add(II)V

    const/4 v10, 0x5

    goto :goto_5

    .line 570
    :cond_5
    :goto_6
    if-gez v16, :cond_6

    .line 571
    add-int/lit8 v16, v16, 0xc

    .line 572
    add-int/lit8 v17, v17, -0x1

    goto :goto_6

    .line 575
    :cond_6
    invoke-static {v4, v15}, Lorg/apache/commons/lang3/time/DurationFormatUtils$Token;->containsTokenWithValue([Lorg/apache/commons/lang3/time/DurationFormatUtils$Token;Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_8

    if-eqz v17, :cond_8

    .line 576
    :goto_7
    if-eqz v17, :cond_7

    .line 577
    mul-int/lit8 v6, v17, 0xc

    add-int v16, v16, v6

    .line 578
    const/16 v17, 0x0

    goto :goto_7

    .line 576
    :cond_7
    move/from16 v6, v16

    move/from16 v15, v17

    goto/16 :goto_b

    .line 628
    :cond_8
    move/from16 v6, v16

    move/from16 v15, v17

    goto/16 :goto_b

    .line 584
    :cond_9
    invoke-static {v4, v15}, Lorg/apache/commons/lang3/time/DurationFormatUtils$Token;->containsTokenWithValue([Lorg/apache/commons/lang3/time/DurationFormatUtils$Token;Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_d

    .line 585
    const/4 v6, 0x1

    invoke-virtual {v7, v6}, Ljava/util/Calendar;->get(I)I

    move-result v10

    .line 586
    .local v10, "target":I
    if-gez v16, :cond_a

    .line 588
    add-int/lit8 v10, v10, -0x1

    .line 591
    :cond_a
    :goto_8
    invoke-virtual {v5, v6}, Ljava/util/Calendar;->get(I)I

    move-result v15

    if-eq v15, v10, :cond_c

    .line 592
    const/4 v6, 0x6

    invoke-virtual {v5, v6}, Ljava/util/Calendar;->getActualMaximum(I)I

    move-result v15

    invoke-virtual {v5, v6}, Ljava/util/Calendar;->get(I)I

    move-result v23

    sub-int v15, v15, v23

    add-int/2addr v14, v15

    .line 595
    instance-of v15, v5, Ljava/util/GregorianCalendar;

    if-eqz v15, :cond_b

    .line 596
    const/4 v15, 0x2

    invoke-virtual {v5, v15}, Ljava/util/Calendar;->get(I)I

    move-result v6

    const/4 v15, 0x1

    if-ne v6, v15, :cond_b

    .line 597
    const/4 v6, 0x5

    invoke-virtual {v5, v6}, Ljava/util/Calendar;->get(I)I

    move-result v15

    const/16 v6, 0x1d

    if-ne v15, v6, :cond_b

    .line 598
    add-int/lit8 v14, v14, 0x1

    .line 601
    :cond_b
    const/4 v6, 0x1

    invoke-virtual {v5, v6, v6}, Ljava/util/Calendar;->add(II)V

    .line 603
    const/4 v6, 0x6

    invoke-virtual {v5, v6}, Ljava/util/Calendar;->get(I)I

    move-result v6

    add-int/2addr v14, v6

    const/4 v6, 0x1

    goto :goto_8

    .line 606
    :cond_c
    const/16 v17, 0x0

    .line 609
    .end local v10    # "target":I
    :cond_d
    :goto_9
    const/4 v6, 0x2

    invoke-virtual {v5, v6}, Ljava/util/Calendar;->get(I)I

    move-result v10

    invoke-virtual {v7, v6}, Ljava/util/Calendar;->get(I)I

    move-result v15

    if-eq v10, v15, :cond_e

    .line 610
    const/4 v10, 0x5

    invoke-virtual {v5, v10}, Ljava/util/Calendar;->getActualMaximum(I)I

    move-result v15

    add-int/2addr v14, v15

    .line 611
    const/4 v15, 0x1

    invoke-virtual {v5, v6, v15}, Ljava/util/Calendar;->add(II)V

    goto :goto_9

    .line 614
    :cond_e
    const/4 v10, 0x5

    const/4 v6, 0x0

    move/from16 v16, v6

    .line 616
    :goto_a
    if-gez v14, :cond_f

    .line 617
    invoke-virtual {v5, v10}, Ljava/util/Calendar;->getActualMaximum(I)I

    move-result v6

    add-int/2addr v14, v6

    .line 618
    add-int/lit8 v16, v16, -0x1

    .line 619
    const/4 v6, 0x2

    const/4 v15, 0x1

    invoke-virtual {v5, v6, v15}, Ljava/util/Calendar;->add(II)V

    goto :goto_a

    .line 616
    :cond_f
    move/from16 v6, v16

    move/from16 v15, v17

    .line 628
    .end local v16    # "months":I
    .end local v17    # "years":I
    .local v6, "months":I
    .local v15, "years":I
    :goto_b
    const-string v10, "d"

    invoke-static {v4, v10}, Lorg/apache/commons/lang3/time/DurationFormatUtils$Token;->containsTokenWithValue([Lorg/apache/commons/lang3/time/DurationFormatUtils$Token;Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_10

    .line 629
    mul-int/lit8 v10, v14, 0x18

    add-int/2addr v13, v10

    .line 630
    const/4 v14, 0x0

    .line 632
    :cond_10
    const-string v10, "H"

    invoke-static {v4, v10}, Lorg/apache/commons/lang3/time/DurationFormatUtils$Token;->containsTokenWithValue([Lorg/apache/commons/lang3/time/DurationFormatUtils$Token;Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_11

    .line 633
    mul-int/lit8 v10, v13, 0x3c

    add-int/2addr v12, v10

    .line 634
    const/4 v13, 0x0

    .line 636
    :cond_11
    const-string v10, "m"

    invoke-static {v4, v10}, Lorg/apache/commons/lang3/time/DurationFormatUtils$Token;->containsTokenWithValue([Lorg/apache/commons/lang3/time/DurationFormatUtils$Token;Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_12

    .line 637
    mul-int/lit8 v10, v12, 0x3c

    add-int/2addr v11, v10

    .line 638
    const/4 v12, 0x0

    .line 640
    :cond_12
    const-string v10, "s"

    invoke-static {v4, v10}, Lorg/apache/commons/lang3/time/DurationFormatUtils$Token;->containsTokenWithValue([Lorg/apache/commons/lang3/time/DurationFormatUtils$Token;Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_13

    .line 641
    int-to-long v0, v11

    mul-long v0, v0, v19

    add-long/2addr v8, v0

    .line 642
    const/4 v11, 0x0

    move-wide v0, v8

    goto :goto_c

    .line 640
    :cond_13
    move-wide v0, v8

    .line 645
    .end local v8    # "milliseconds":J
    .local v0, "milliseconds":J
    :goto_c
    int-to-long v9, v15

    int-to-long v2, v6

    move-object/from16 v24, v5

    move/from16 v25, v6

    .end local v5    # "start":Ljava/util/Calendar;
    .end local v6    # "months":I
    .local v24, "start":Ljava/util/Calendar;
    .local v25, "months":I
    int-to-long v5, v14

    move-wide/from16 v26, v0

    .end local v0    # "milliseconds":J
    .local v26, "milliseconds":J
    int-to-long v0, v13

    move-wide/from16 v16, v0

    int-to-long v0, v12

    move-wide/from16 v18, v0

    int-to-long v0, v11

    move-object v8, v4

    move/from16 v28, v11

    move/from16 v29, v12

    .end local v11    # "seconds":I
    .end local v12    # "minutes":I
    .local v28, "seconds":I
    .local v29, "minutes":I
    move-wide v11, v2

    move v2, v13

    move v3, v14

    .end local v13    # "hours":I
    .end local v14    # "days":I
    .local v2, "hours":I
    .local v3, "days":I
    move-wide v13, v5

    move v5, v15

    .end local v15    # "years":I
    .local v5, "years":I
    move-wide/from16 v15, v16

    move-wide/from16 v17, v18

    move-wide/from16 v19, v0

    move-wide/from16 v21, v26

    move/from16 v23, p5

    invoke-static/range {v8 .. v23}, Lorg/apache/commons/lang3/time/DurationFormatUtils;->format([Lorg/apache/commons/lang3/time/DurationFormatUtils$Token;JJJJJJJZ)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static formatPeriodISO(JJ)Ljava/lang/String;
    .locals 7
    .param p0, "startMillis"    # J
    .param p2, "endMillis"    # J

    .line 659
    const/4 v5, 0x0

    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v6

    const-string v4, "\'P\'yyyy\'Y\'M\'M\'d\'DT\'H\'H\'m\'M\'s.SSS\'S\'"

    move-wide v0, p0

    move-wide v2, p2

    invoke-static/range {v0 .. v6}, Lorg/apache/commons/lang3/time/DurationFormatUtils;->formatPeriod(JJLjava/lang/String;ZLjava/util/TimeZone;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static lexx(Ljava/lang/String;)[Lorg/apache/commons/lang3/time/DurationFormatUtils$Token;
    .locals 12
    .param p0, "format"    # Ljava/lang/String;

    .line 669
    new-instance v0, Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 671
    .local v0, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/apache/commons/lang3/time/DurationFormatUtils$Token;>;"
    const/4 v1, 0x0

    .line 674
    .local v1, "inLiteral":Z
    const/4 v2, 0x0

    .line 675
    .local v2, "buffer":Ljava/lang/StringBuilder;
    const/4 v3, 0x0

    .line 676
    .local v3, "previous":Lorg/apache/commons/lang3/time/DurationFormatUtils$Token;
    const/4 v4, 0x0

    .line 677
    .local v4, "inOptional":Z
    const/4 v5, -0x1

    .line 678
    .local v5, "optionalIndex":I
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v7

    if-ge v6, v7, :cond_7

    .line 679
    invoke-virtual {p0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v7

    .line 680
    .local v7, "ch":C
    if-eqz v1, :cond_0

    const/16 v8, 0x27

    if-eq v7, v8, :cond_0

    .line 681
    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 682
    goto/16 :goto_4

    .line 684
    :cond_0
    const/4 v8, 0x0

    .line 685
    .local v8, "value":Ljava/lang/String;
    sparse-switch v7, :sswitch_data_0

    .line 732
    if-nez v2, :cond_4

    .line 733
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    move-object v2, v9

    .line 734
    new-instance v9, Lorg/apache/commons/lang3/time/DurationFormatUtils$Token;

    invoke-direct {v9, v2, v4, v5}, Lorg/apache/commons/lang3/time/DurationFormatUtils$Token;-><init>(Ljava/lang/CharSequence;ZI)V

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 711
    :sswitch_0
    const-string v8, "y"

    .line 712
    goto/16 :goto_2

    .line 726
    :sswitch_1
    const-string v8, "s"

    .line 727
    goto :goto_2

    .line 723
    :sswitch_2
    const-string v8, "m"

    .line 724
    goto :goto_2

    .line 717
    :sswitch_3
    const-string v8, "d"

    .line 718
    goto :goto_2

    .line 695
    :sswitch_4
    if-eqz v4, :cond_1

    .line 698
    const/4 v4, 0x0

    .line 699
    goto :goto_2

    .line 696
    :cond_1
    new-instance v9, Ljava/lang/IllegalArgumentException;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Attempting to close unopened optional block at index: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 688
    :sswitch_5
    if-nez v4, :cond_2

    .line 691
    add-int/lit8 v5, v5, 0x1

    .line 692
    const/4 v4, 0x1

    .line 693
    goto :goto_2

    .line 689
    :cond_2
    new-instance v9, Ljava/lang/IllegalArgumentException;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Nested optional block at index: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 729
    :sswitch_6
    const-string v8, "S"

    .line 730
    goto :goto_2

    .line 714
    :sswitch_7
    const-string v8, "M"

    .line 715
    goto :goto_2

    .line 720
    :sswitch_8
    const-string v8, "H"

    .line 721
    goto :goto_2

    .line 701
    :sswitch_9
    if-eqz v1, :cond_3

    .line 702
    const/4 v2, 0x0

    .line 703
    const/4 v1, 0x0

    goto :goto_2

    .line 705
    :cond_3
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    move-object v2, v9

    .line 706
    new-instance v9, Lorg/apache/commons/lang3/time/DurationFormatUtils$Token;

    invoke-direct {v9, v2, v4, v5}, Lorg/apache/commons/lang3/time/DurationFormatUtils$Token;-><init>(Ljava/lang/CharSequence;ZI)V

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 707
    const/4 v1, 0x1

    .line 709
    goto :goto_2

    .line 736
    :cond_4
    :goto_1
    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 739
    :goto_2
    if-eqz v8, :cond_6

    .line 740
    if-eqz v3, :cond_5

    invoke-virtual {v3}, Lorg/apache/commons/lang3/time/DurationFormatUtils$Token;->getValue()Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v9, v8}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_5

    .line 741
    invoke-virtual {v3}, Lorg/apache/commons/lang3/time/DurationFormatUtils$Token;->increment()V

    goto :goto_3

    .line 743
    :cond_5
    new-instance v9, Lorg/apache/commons/lang3/time/DurationFormatUtils$Token;

    invoke-direct {v9, v8, v4, v5}, Lorg/apache/commons/lang3/time/DurationFormatUtils$Token;-><init>(Ljava/lang/CharSequence;ZI)V

    .line 744
    .local v9, "token":Lorg/apache/commons/lang3/time/DurationFormatUtils$Token;
    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 745
    move-object v3, v9

    .line 747
    .end local v9    # "token":Lorg/apache/commons/lang3/time/DurationFormatUtils$Token;
    :goto_3
    const/4 v2, 0x0

    .line 678
    .end local v7    # "ch":C
    .end local v8    # "value":Ljava/lang/String;
    :cond_6
    :goto_4
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_0

    .line 750
    .end local v6    # "i":I
    :cond_7
    if-nez v1, :cond_9

    .line 753
    if-nez v4, :cond_8

    .line 756
    invoke-static {}, Lorg/apache/commons/lang3/time/DurationFormatUtils$Token;->access$100()[Lorg/apache/commons/lang3/time/DurationFormatUtils$Token;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Lorg/apache/commons/lang3/time/DurationFormatUtils$Token;

    return-object v6

    .line 754
    :cond_8
    new-instance v6, Ljava/lang/IllegalArgumentException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Unmatched optional in format: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 751
    :cond_9
    new-instance v6, Ljava/lang/IllegalArgumentException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Unmatched quote in format: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    nop

    :sswitch_data_0
    .sparse-switch
        0x27 -> :sswitch_9
        0x48 -> :sswitch_8
        0x4d -> :sswitch_7
        0x53 -> :sswitch_6
        0x5b -> :sswitch_5
        0x5d -> :sswitch_4
        0x64 -> :sswitch_3
        0x6d -> :sswitch_2
        0x73 -> :sswitch_1
        0x79 -> :sswitch_0
    .end sparse-switch
.end method

.method private static paddedValue(JZI)Ljava/lang/String;
    .locals 2
    .param p0, "value"    # J
    .param p2, "padWithZeros"    # Z
    .param p3, "count"    # I

    .line 769
    invoke-static {p0, p1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    .line 770
    .local v0, "longString":Ljava/lang/String;
    if-eqz p2, :cond_0

    const/16 v1, 0x30

    invoke-static {v0, p3, v1}, Lorg/apache/commons/lang3/StringUtils;->leftPad(Ljava/lang/String;IC)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    move-object v1, v0

    :goto_0
    return-object v1
.end method
