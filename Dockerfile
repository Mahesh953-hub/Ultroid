
# Ultroid - UserBot
# Copyright (C) 2021-2023 TeamUltroid
# This a part file is of < https://github.com/TeamUltroid/Ultroid/ >
# Please read the GNU Affero General Public License in <https://www.github.com/TeamUltroid/Ultroid/blob/main/LICENSE/>.

FROM theteamultroid/ultroid:main

# set timezone
ENV TZ=Asia/Kolkata
RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime \
    && echo $TZ > /etc/timezone

COPY installer.sh .

RUN bash installer.sh

# changing workdir
WORKDIR /root/Ultroid

# expose the bot's port
EXPOSE 80

# start the bot
CMD ["bash", "startup"]
